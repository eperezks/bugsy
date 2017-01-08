class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # before_action :authenticate_user!
  skip_before_action :verify_authenticity_token

  # def after_sign_in_path_for(_resource)
  #   return root_path
  #   Rails.application.secrets[:index]
  #   # params[:location] || stored_location_for(resource) || root_path
  # end

  # def authenticate
  #   binding.pry
  #   skip_authorization
  #   return head :no_content, status: :ok if current_user
  #   render json: {}, status: :unauthorized
  # end
end
