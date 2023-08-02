class CommentsController < ApplicationController
  before_action :authenticate_user!, only: %i[new create]
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create comment_params
    if @comment.valid?
      redirect_to @article
    else
      @article = Article.find(params[:id])
      render :show, status: :unprocessable_entity
    end
    # if @comment.save
    #   redirect_to @article
    # else
    #   flash.now[:error] = @comment.errors.full_messages.join(", ") # Collect error messages
    #   render :show, status: :unprocessable_entity
    # end
  end

  def show
    @article = Article.find(params[:article_id])
    @comments = @article.comments
  end

  private

  def comment_params
    params.require(:comment).permit(:author, :body)
  end
end
