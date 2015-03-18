class CommentsController < ApplicationController

  respond_to :json

  def index
    respond_with Comment.all
  end

  def create
    p "-----------------"
    p params
    p "-----------------"
    @comment = Comment.new(username: 'Brendan', 
                            text: params[:text])

    if @comment.save!
      respond_with(@comment)
    end
  end

end