class RatingsController < ApplicationController
    def create
        store = Store.find(params[:store_id])
        rating = Rating.find_by(:user => current_user, :store => store)
        unless rating
            puts '------------------------'
            puts 'making a new rating'
            puts '------------------------'
            store.ratings.create(user: current_user, rating: params[:rating])
        end
        redirect_to store_path(store)
    end
    

end