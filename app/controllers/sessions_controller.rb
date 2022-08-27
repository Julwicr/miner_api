class SessionsController < ApplicationController

  def auth
    @user = User.find_by(username: request.params[:username])

    err = {
      message: 'User not found.'
    }

    err_pass = {
      message: 'Wrong password.',
      authentitcate: false
    }

    if @user && @user.password == params[:password]
      render json: @user, except: %i[password created_at updated_at id]
    elsif @user
      render json: err_pass
    else
      render json: err
    end
  end
end
