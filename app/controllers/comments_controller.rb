class CommentsController <ApplicationController
    def index
    end

    def new
        @comment =Comment.new
        @store = Store.find(params[:store_id])
        end

    def create
        @comment = Comment.new(comment_params)
        @comment.store_id = params[:store_id]
        @comment.user_id = current_user.id
        
        if @comment.save
           created_at(Time.now)
            redirect_to store_path(params[:store_id])
        else 
            render :new

        end
    end

    def show
        @store = Store.find(params[:store_id])
        @user = User.find(params[:user_id])
        @comment = Comment.new
    end


private

    def comment_params
        params.require(:comment).permit(:comment)
    end
end