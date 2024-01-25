# frozen_string_literal: true

module ISBN::RangeMessage
  extend self

  def find_registrant(digits)
    ranges_by_group_identifier[digits.first].each do |size, ranges|
      value = digits[1..size].join

      return value if ranges.any? { |range| range.cover? value.to_i }
    end
  end

  private

  def ranges_by_group_identifier
    @ranges_by_group_identifier ||= begin
      groups.each_with_object({}) do |group, identifiers|
        _, identifier = group["Prefix"].split("-")

        rules = group.dig("Rules", "Rule")
        identifiers[identifier.to_i] = rules.each_with_object({}) do |rule, lengths|
          next if rule.is_a? Array

          length = rule["Length"].to_i
          next if length.zero?

          start_index, end_index = rule["Range"].split("-").map do |index|
            index.first(length).to_i
          end

          (lengths[length] ||= []) << Range.new(start_index, end_index)
        end
      end
    end
  end

  def groups
    Hash.from_xml(content).dig("ISBNRangeMessage", "RegistrationGroups", "Group")
  end

  def content
    File.read(File.join(File.dirname(__FILE__), "range_message.xml"))
  end
end
