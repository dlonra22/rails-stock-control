class SessionsController < ApplicationController
    def new
    end
    def login
        if current_user
            flash[:alert] = "you are already logged in"
            redirect_to user_path(current_user)
        end
    end

    def create
        user = User.find_by(username: params[:user][:username])
        if user.try(:authenticate, params[:user][:password])
            session[:user_id] = user.id 
            redirect_to user_path(user)
        else
            flash[:error] ="Invalid login details, please try again"
            redirect_to login_path
        end
    end
    def destroy
        session.delete :user_id
        reset_user
        redirect_to login_path
    end
end