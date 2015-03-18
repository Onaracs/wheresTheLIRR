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
    # if new_comment.valid?
    #   new_comment.save!
    # end

    # respond_with(new_comment) do |format|
    #   format.json { render :json => new_comment.as_json }
    # end
  end

end