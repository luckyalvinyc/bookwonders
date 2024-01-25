# frozen_string_literal: true

class ISBN::Base
  class << self
    def convert(digits)
      check_digit = calculate_check_digit(digits)

      new(digits + [ check_digit ])
    end
  end

  attr_reader :digits

  def initialize(digits)
    validate!(digits)
    @digits = digits
  end

  def ten
    return self.to_s if is_a? ISBN::Ten
    convert.to_s
  end

  def thirteen
    return self.to_s if is_a? ISBN::Thirteen
    convert.to_s
  end

  def to_s
    format
  end
  alias to_str to_s

  private

  def validate!(digits)
    sum = self.class.calculate_sum(digits)

    raise ISBN::Incorrect unless (sum % self.class::MULTIPLE_OF).zero?
  end
end
