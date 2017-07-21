class UsersController < ApplicationController
    
    def new
        @user = User.new
    end
    
    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id 
            # above is to help keep the user keep the session going after they log in
            flash[:notice] = "Lets Explore some Ice Cream!"
            redirect_to root_path
        else
            render :new
        end
    end
    
private

    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmatiom)
    end
    
end
