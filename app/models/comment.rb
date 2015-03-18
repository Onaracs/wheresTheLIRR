class Comment < ActiveRecord::Base
  validates :text, presence: true, length: { minimum: 5, maximum: 140 }
  belongs_to :town

end
