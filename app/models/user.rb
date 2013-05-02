class User < ActiveRecord::Base
  attr_accessible :mail, :username
  has_many :disks
  has_many :messages, dependent: :destroy

  #has_secure_password

  validates :username, :presence => true,
            :uniqueness => true
  validates :mail, :presence => true
  validates :password, :presence => true
  validates_uniqueness_of :username
  
end
