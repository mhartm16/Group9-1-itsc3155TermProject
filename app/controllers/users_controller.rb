class UsersController < ApplicationController
    def index
        @users = User.all
    end
    
    def show
        @users = User.find(params[:id]) 
    end
    def new
        @users = User.new
        
    end
    
    def create
        @users = User.new(user_params)
        
        if @users.save
            redirect_to @users
        else
            render 'new'
        end
        
    end
    
    def destroy
        @users = User.find(params[:id])
        @users.destroy
        
        redirect_to users_path
    end
end

private
    def user_params
      params.require(:users).permit(:email, :password)
    end