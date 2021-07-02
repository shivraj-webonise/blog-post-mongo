class SessionsController < ApplicationController
    def new
    end
  
    def create
      user = User.where(email: params[:email])
      if user && params[:password] == user.first.password
        session[:user_id] = user.first.id
        redirect_to posts_path, notice: "Logged in!"
      else
        flash.now[:alert] = "Email or password is invalid"
        render "new"
      end
    end
  
    def destroy
      session[:user_id] = nil
      redirect_to login_path, notice: "Logged out!"
    end
end
  