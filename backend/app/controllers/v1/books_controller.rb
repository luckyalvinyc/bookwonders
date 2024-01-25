# frozen_string_literal: true

class V1::BooksController < ApplicationController
  def show
    @book = Book.find_by_isbn(params[:isbn])
  end
end
