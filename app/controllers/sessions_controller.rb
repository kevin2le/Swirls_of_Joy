class SessionsController < ApplicationController

    def new
    end
    
    def create
        user = User.find_by(email: params[:email])
        # logging in
        if user && user.authenticate(params[:password])
            # if the user logging in matches the info theny log in
            session[:user_id] = user.id
            redirect_to root_path, notice: "Logged in!"
        else
            flash.now.alert =  "Nope!! Do it again!"
            render :new
        end
        
    end
    
    def destroy
        session[:user_id] = nil
        redirect_to root_path, notice: "You done?!"
    end
    

end

