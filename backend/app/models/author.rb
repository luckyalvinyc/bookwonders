# frozen_string_literal: true

class Author < ApplicationRecord
  module Extension
    extend ActiveSupport::Concern

    class_methods do
      def extension
        -> { extending Extension }
      end
    end

    def to_csv
      map(&:full_name).join(", ")
    end
  end

  include Extension

  has_many :contributors
  has_many :books, through: :contributors

  def full_name
    [ first_name, middle_name, last_name ].compact.join(" ")
  end
end
