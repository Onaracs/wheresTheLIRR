class CommentsController < ApplicationController

  respond_to :json

  def index
    respond_with Comment.all
  end

  def show
    p "========================="
    p params

    town = Town.find(params[:id])
    comments = Comment.where(town_id: town.id)
    p comments
    p town
    p "========================="

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