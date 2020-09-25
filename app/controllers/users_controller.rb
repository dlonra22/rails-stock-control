class UsersController < ApplicationController
    def index
        @users = User.all
    end
    
    def new
        @user = User.new
        render :new
    end

    def show
        @user=User.find_by(name: params[:id])
    end
    def edit
    end
    def create
    end
    def update
    end
    def destroy
    end

end
