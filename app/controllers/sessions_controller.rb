class SessionsController < ApplicationController
    def new
    end
    def login
    end
    def create
        user = User.find_by(username: params[:username])
        if user.try(:authenticate, params[:password])
            session[:user_id] = user.id 
            redirect_to user_path(user)
        else
            flash[:error] ="Invalid login details, please try again"
            redirect_to login_path
        end
    end
    def destroy
        session.delete :user_id
        redirect_to login_path
    end
end