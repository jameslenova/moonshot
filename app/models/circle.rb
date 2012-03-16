class Circle < ActiveRecord::Base

has_many :circleusers, :foreign_key => "circle_id",:dependent => :destroy
                           
  has_many :users, :through => :circleusers, :source => :user
  
  belongs_to :event

end
