# frozen_string_literal: true

class Contributor < ApplicationRecord
  belongs_to :author
  belongs_to :book
end
