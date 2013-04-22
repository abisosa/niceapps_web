class User < ActiveRecord::Base
  attr_accessible :mail, :password, :username
  has_many :disks
  has_many :offers

  validates :username, :presence => true,
            :uniqueness => true
  validates :mail, :presence => true
  validates :password, :presence => true
  
end
