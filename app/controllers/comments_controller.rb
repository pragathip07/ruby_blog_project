class CommentsController < ApplicationController
    def create
        # Create a new comment for the post
        # from the current user
        @comment = current_user.comments.new(comment_params)
        if !@comment.save
            flash[:notice] = @comment.errors.full_messages.to_sentence
        end
        redirect_to blog_post_path(params[:blog_post_id])
    end

    private

    def comment_params
        params
            .require(:comment)
            .permit(:content)
            .merge(blog_post_id: params[:blog_post_id])
    end

end
