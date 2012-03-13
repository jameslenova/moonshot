class Event < ActiveRecord::Base
belongs_to :location
has_many :freefors, dependent: :destroy
has_many :users, through: :freefors, source: :user



end
