# frozen_string_literal: true

class Book < ApplicationRecord
  belongs_to :publisher
  has_many :contributors
  has_many :authors, Author.extension, through: :contributors, dependent: :destroy
  has_one_attached :image

  validates :authors, presence: true

  class << self
    def find_by_isbn(identifier)
      find_by!(isbn_13: ISBN.for(identifier).thirteen)
    end

    def featured(limit = 3)
      order("RANDOM()").first(3)
    end
  end

  def isbn
    @isbn ||= ISBN.for(isbn_13)
  end
end
