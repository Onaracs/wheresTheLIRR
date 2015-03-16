class CommentsController < ApplicationController

  respond_to :json

  def index
    respond_with Comment.all
  end

  def create
    p "-----------------"
    p params
    p "-----------------"
  end

end