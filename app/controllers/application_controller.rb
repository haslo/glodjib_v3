class ApplicationController < ActionController::API

  before_action :authenticate_user_from_token!

  class AuthorizationException < StandardError; end

  rescue_from ::ApplicationController::AuthorizationException do
    render json: { error: 'please log in first' }, status: 401
  end

  private

  def authenticate_user_from_token!
    email          = headers['X-Auth-Email'].presence || params[:email].presence
    provided_token = headers['X-Auth-Token'].presence || params[:token].presence
    user           = User.find_by(email: email)
    if user && Devise.secure_compare(user.authentication_token, provided_token)
      sign_in(user, store: false)
    else
      raise ::ApplicationController::AuthorizationException
    end
  end

end
