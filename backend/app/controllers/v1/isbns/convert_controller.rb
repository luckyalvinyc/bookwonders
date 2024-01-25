# frozen_string_literal: true

class V1::Isbns::ConvertController < ApplicationController
  def create
    @isbn = ISBN.for(params[:isbn])
  end
end
