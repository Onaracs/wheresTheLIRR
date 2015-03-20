class Hub < ActiveRecord::Base
  belongs_to :line
  belongs_to :town
end
