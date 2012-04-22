class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation, :personalvolume
  has_secure_password
  has_many :users
  belongs_to :user
  has_many :freefors, dependent: :destroy
  has_many :events, through: :freefors, source: :event
  has_many :microposts, dependent: :destroy
  has_many :relationships, foreign_key: "follower_id", dependent: :destroy
  has_many :followed_users, through: :relationships, source: :followed
  has_many :reverse_relationships, foreign_key: "followed_id",
                                   class_name:  "Relationship",
                                   dependent:   :destroy
  has_many :followers, through: :reverse_relationships, source: :follower

has_many :circleusers, :foreign_key => "user_id",
                           :dependent => :destroy
                           
  has_many :circles, :through => :circleusers, :source => :circle
                           


  before_save :create_remember_token
  #validates :user_id, presence: true

  validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 6 }
  validates :password_confirmation, presence: true


  def groupvolume

  firstlayerv=0
  secondlayerv=0
  thirdlayerv=0
  arraysecondgeneration = Array.new
  arraythirdgeneration = Array.new
  minpersonalvolume = 1
  firstdiscount=1
  seconddiscount=1
  thirddiscount=1
  
  self.users.each { |dl| arraysecondgeneration=arraysecondgeneration+dl.users }
  arraysecondgeneration.each { |dl| arraythirdgeneration=arraythirdgeneration+dl.users }

  self.users.each { |dl| firstlayerv=firstlayerv+dl.personalvolume }
  arraysecondgeneraton.each { |dl| secondlayerv=secondlayerv+dl.personalvolume }
  arraythirdgeneraton.each { |dl| thirdlayerv=thirdlayerv+dl.personalvolume }

  return ( firstlayerv+secondlayerv + thirdlayerv)

  end






 def promote
    self.rankno=0
    princelevel = 100
    gv = self.groupvolume
    arrayranks = Array.new

    if gv > princelevel  
      self.rankno = 1
    end
 
    if self.users.length > 0 
     self.users.each { |dl| arrayranks = arrayranks + dl.promote }
     arrayranks.sort {|x,y| y <=> x } 

     if (arrayranks.length > 2)  and (gv > princelevel )
     
        self.rankno = arrayranks[2] + 1
     end
    end


  self.save
  arrayranks=arrayranks + array[self.rankno]
  
  return Array[ arrayranks.max ]
  
 
end

 

 


 
 
 



  



  
  
#@arrayofgroupspopularitynoclash = Array.new

#@foundgroups.each { |rec| @foundgroupssets.add([rec.first,rec.second,rec.third,rec.fouth].to_set)} 

  

  def feed
    Micropost.from_users_followed_by(self)
  end

  def following?(other_user)
    relationships.find_by_followed_id(other_user.id)
  end

  def follow!(other_user)
    relationships.create!(followed_id: other_user.id)
  end

  def unfollow!(other_user)
    relationships.find_by_followed_id(other_user.id).destroy
  end


  def freefor?(event)
    freefors.find_by_event_id(event.id)
  end

def join!(event)
    freefors.create!(event_id: event.id)
  end

def unjoin!(event)
    freefors.find_by_event_id(event.id).destroy
  end


  private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end
