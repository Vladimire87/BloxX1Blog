class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])

    @comment = @article.comments.new comment_params

    if @comment.save
      redirect_to @article
    else
      render :show
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:author, :body)
  end
end
