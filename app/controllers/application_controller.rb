class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
    private

    helper_method :current_user
    #makes this make the current user called into the views

    def current_user
        @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end
    
    def authorize
      redirect_to login_path, alert:'unauthorized entry- you must be logged in' if current_user.nil?
    end

    helper_method :average_rating
    
    def average_rating store 
        store_id = store.id
        rating = Rating.where(store_id: store_id)
        sum = 0
        rating.each do |rating|
          sum += rating.rating
        end
        if rating.count == 0
          0
        else        
          sum.to_f / rating.count
        end
      end
   

    
end