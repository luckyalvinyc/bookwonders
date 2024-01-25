# frozen_string_literal: true

class ISBN::Ten < ISBN::Base
  MULTIPLE_OF = 11
  X           = "X"

  class << self
    def calculate_check_digit(digits)
      sum = calculate_sum(digits)

      (MULTIPLE_OF - (sum % MULTIPLE_OF)) % MULTIPLE_OF
    end

    def calculate_sum(digits)
      weight = 10

      digits.each_with_index.sum do |(digit, index)|
        digit * (weight - index)
      end
    end
  end

  def convert
    ISBN::Thirteen.convert([ 9, 7, 8 ] + digits.first(9))
  end

  def format
    dupped = digits.dup
    dupped[dupped.size - 1] = X if dupped.last == 10

    parts = [ dupped.first, ISBN::RangeMessage.find_registrant(dupped) ]
    parts << dupped[parts.join.size..-2].join
    parts << dupped.last
    parts.join("-")
  end
end
