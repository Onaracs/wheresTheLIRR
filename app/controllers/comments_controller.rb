class CommentsController < ApplicationController

  respond_to :json

  def index
    respond_with Comment.all
  end

  def show
    town = Town.find_by_name(params[:id])
    comments = Comment.where(town_id: town.id)

    respond_with comments
  end

  def create
    town = Town.find_by_name(params[:town])
    comment = Comment.new(username: 'Test User', 
                            text: params[:text],
                            town_id: town.id)

    if comment.save!
      respond_with(comment)
    end
  end

end