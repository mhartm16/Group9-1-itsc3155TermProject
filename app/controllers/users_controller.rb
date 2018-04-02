class UsersController < ApplicationController
    def show
        @users = User.find(params[:id]) 
    end
    def new
    end
    
    def create
        @users = User.new(user_params)
        
        @users.save
        redirect_to @users
    end
end

private
    def user_params
      params.require(:users).permit(:email, :password)
    end