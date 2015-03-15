class Comment < ActiveRecord::Base

  validates :text, presence: true, length: { minimum: 5, maximum: 140 }

  def create
    new_comment = Comment.new
    new_comment.username = "Brendan Scarano"
    new_comment.text = params[:new_comment][:contents]

    if new_comment.valid?
      new_comment.save!
    end

    respond_with(new_comment) do |format|
      format.json { render :json => new_comment.as_json }
    end
  end


end
