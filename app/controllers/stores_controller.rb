class StoresController < ApplicationController
    
    before_action only: [:show, :edit, :update, :destroy]
    before_action :authorize, except: [:index]
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

    def edit
        @store = Store.find(params[:id])
    end
    
    def update
        @store = Store.find(params[:id])
        if @store.save
            redirect_to store_path
        else
            render :edit
        end

    end
    

    def destroy
        @store = Store.find(params[:id])
        @store.destroy
        redirect_to stores_path
       
    end

    def random
        @store = Store.all.to_a.sample
        @comment = Comment.new
        redirect_to store_path(@store) 
    end


    private

        def store_params
            params.require(:store).permit(:image_content_type, :name, :contact_info, :location)
        end    
end