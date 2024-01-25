class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound do |exception|
    respond_with_error("Couldn't find #{exception.model.downcase}.", :not_found)
  end

  rescue_from DomainError do |exception|
    respond_with_error(exception.message, :bad_request)
  end

  private

  def respond_with_error(message, status)
    data = {
      error: {
        message: message
      }
    }
    render json: data, status: status
  end
end
