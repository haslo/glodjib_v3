class DeviseOverrides::SessionsController < Devise::SessionsController

  respond_to :json

  skip_before_filter :authenticate_user_from_token!, only: [:new, :create]

  def new
    raise ActionController::RoutingError.new('Not Found')
  end

  def create
    email    = request.headers['X-Auth-Email'].presence || params[:email].presence
    password = request.headers['X-Auth-Password'].presence || params[:password].presence
    user     = User.find_by(email: email)
    if user && user.valid_password?(password)
      sign_in(user, store: false)
      if user.authentication_token.blank?
        user.authentication_token = generate_authentication_token
        user.save!
      end
      render json: { token: user.authentication_token }, status: 200
    else
      render json: { error: 'login credentials were wrong' }, status: 401
    end
  end

  private

  def generate_authentication_token
    loop do
      token = Devise.friendly_token
      break token unless User.where(authentication_token: token).first
    end
  end

end
