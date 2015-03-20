class Town < ActiveRecord::Base

  has_many :hubs
  has_many :lines, :through => :hubs
  has_many :comments

end