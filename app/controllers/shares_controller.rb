class SharesController < ApplicationController
    def index
        @shares= Share.all
        @share= Share.new
    end

    def new
        @share= Share.all
    end
    
    def create
        @share = Share.new(params.require(:share).permit(:nickname, :location, :image_file_name, :content))
        if @share.save
            redirect_to shares_path
        else
            render :new
        end
    end   
    private
        def share_params
            params.require(:share).permit(:image_file_name, :nickname, :content, :location)
        end
end