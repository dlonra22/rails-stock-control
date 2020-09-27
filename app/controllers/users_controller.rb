class UsersController < ApplicationController
    layout "home", only: [:show]
    def index
     if admin?
        @users = User.all
     elsif current_user
        flash[:error] = "admins only"
        redirect_to user_path(current_user)
     else 
        flash[:error] ="please login"
        redirect_to login_path
     end

    end
    
    def new
        if admin?
            @user = User.new
        elsif current_user
            flash[:error] = "admins only"
            redirect_to user_path(current_user)
        elsif User.admin_users
            @user = User.new
            allow_admin_registration = false
        else
            @user = User.new
            allow_admin_registration = true
        end
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

    def update
    end
    def destroy
    end
    private
        def user_params
            params.require(:user).permit(:username, :name, :password,:password_confirmation,:is_admin)
        end

end
