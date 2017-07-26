class StoresController < ApplicationController
    def index
        @stores = Store.all
    end
    
    def show
        @store = Store.find(params[:id])
        @comment = Comment.new
    end

    def new
        @store = Store.new
    end
    def create
        @store = Store.new(params.require(:store).permit(:name, :location, :contact_info, :image_content_type))
        if @store.save
            redirect_to stores_path
        else
            render :new
        end
    end   

    def destroy
        @store = Store.find(params[:id])
        @store.destroy
        redirect_to stores_path
    end



    private

        def store_params
            params.require(:store).permit(:image_content_type, :name, :contact_info, :location)
        end    
end