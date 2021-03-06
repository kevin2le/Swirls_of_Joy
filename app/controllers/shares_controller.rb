class SharesController < ApplicationController
    def index
        @shares= Share.all
    
    end

    def new
        @share= Share.new
    end
    
    def create
        @share = Share.new(params.require(:share).permit(:nickname, :location, :image_content_type, :content))
        if @share.save
            redirect_to shares_path
        else
            render :new
        end
    end   
    private
        def share_params
            params.require(:share).permit(:image_content_type, :nickname, :content, :location)
        end
end