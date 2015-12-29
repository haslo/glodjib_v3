class ApplicationController < ActionController::API

  before_filter :authenticate_user_from_token!

  respond_to :json

  private

  def authenticate_user_from_token!
    email          = headers['X-Auth-Email'].presence || params[:email].presence
    provided_token = headers['X-Auth-Token'].presence || params[:token].presence
    user           = email && Person.joins(:user).mit_email(email).first.try(:user)
    if user && Devise.secure_compare(user.authentication_token, provided_token)
      sign_in(user, store: false)
    else
      render json: { error: 'please log in first' }, status: 401
      false
    end
  end

end
