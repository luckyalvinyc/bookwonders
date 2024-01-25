# frozen_string_literal: true

class Publisher < ApplicationRecord
  has_many :books
end
