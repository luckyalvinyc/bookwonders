# frozen_string_literal: true

class V1::Books::FeaturedController < ApplicationController
  def index
    @books = Book.featured
  end
end
