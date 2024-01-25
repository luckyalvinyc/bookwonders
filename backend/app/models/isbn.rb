# frozen_string_literal: true

module ISBN
  extend self

  class Incorrect < DomainError
    def message
      "The ISBN is incorrect."
    end
  end

  def for(identifier)
    digits = identifier.tr("-", "").chars.map do |char|
      next 10 if char.upcase == Ten::X
      char.to_i
    end

    case digits.size
    when 10
      Ten
    when 13
      Thirteen
    else
      raise ISBN::Incorrect
    end.new(digits)
  end
end
