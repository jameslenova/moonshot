class Circleuser < ActiveRecord::Base

attr_accessible :user_id
  attr_accessible :circle_id
  belongs_to :user
  belongs_to :circle

end
