# frozen_string_literal: true

class ISBN::Thirteen < ISBN::Base
  MULTIPLE_OF = 10

  class << self
    def calculate_check_digit(digits)
      sum = calculate_sum(digits)
      remainder = sum % MULTIPLE_OF

      remainder.zero? ? 0 : MULTIPLE_OF - remainder
    end

    def calculate_sum(digits)
      digits.each_with_index.sum do |(digit, index)|
        weight = index.even? ? 1 : 3
        digit * weight
      end
    end
  end

  def convert
    ISBN::Ten.convert(digits[3..-2])
  end

  def format
    parts = [ digits.first(3).join, digits[3], ISBN::RangeMessage.find_registrant(digits[3..]) ]
    parts << digits[parts.join.size..-2].join
    parts << digits.last
    parts.join("-")
  end
end
