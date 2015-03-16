class Town < ActiveRecord::Base

  belongs_to :line

  has_many :comments

end