require 'jwt'

class AuthenticationController < ApplicationController
  skip_before_action :authenticate_request

  def login
    @user = User.find_by_username(params[:username])
    if @user&.authenticate(params[:password])
      token = jwt_encode(user_id: @user.id)
      render json: { token: token, first_name: @user.first_name, last_name: @user.last_name }, status: :ok
    else
      render json: { error: 'unauthorized' }, status: :unauthorized
    end
  end
end
