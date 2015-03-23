class TownsController < ApplicationController

  respond_to :json

  def index
    respond_with Town.all
  end

end