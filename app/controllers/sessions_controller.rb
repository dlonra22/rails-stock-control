class SessionsController < ApplicationController
    def new
    end
    def login
    end
    def create
    end
    def destroy
        session.delete :user_id
        redirect_to login_path
    end
end