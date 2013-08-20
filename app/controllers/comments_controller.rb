class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

def create
	@article = Article.find(params[:article_id])
    @comment = @article.comments.build(params.require(:comment).permit(:body)) # <- this last part is the problem
    #@comment = @article.comments.build(comment: "awesome comment") #<- this works
    @comment.user_id = current_user.id
    @article.points += 600
    @article.save
 
    redirect_to @article 

	end






end
