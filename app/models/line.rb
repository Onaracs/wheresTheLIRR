class Line < ActiveRecord::Base

  has_many :hubs
  has_many :towns, :through => :hubs

end