class UsersController < ApplicationController
    def index
        @users = User.all
    end
    
    def new
        @user = User.new
    end

    def show
        @user = User.find_by(id: params[:id])
    end
    def edit
    end
    def create
        user = User.new(user_params)
        if user.save
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            render :new
        end
    end

    end
    def update
    end
    def destroy
    end
    private
        def user_params
            params.require(:user).permit(:username, :name, :password,:password_confirmation,:is_admin)

end
