class Location < ActiveRecord::Base
validates :name,  presence: true, length: { maximum: 50 }
validates :address,  presence: true, length: { maximum: 50 }
validates :postal,  presence: true, length: { maximum: 50 }

has_many :events, dependent: :destroy



end
