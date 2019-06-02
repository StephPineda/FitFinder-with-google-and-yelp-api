class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    p user
    if user && user.authenticate(params[:session][:password_digest])
      log_in user
      redirect_to user
    else
      alert 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
  end
end
