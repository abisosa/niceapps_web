class Disk < ActiveRecord::Base
  attr_accessible :artist, :conditions, :interest, :image_encoding, :status, :title
  has_many :messages

  validates :title, :presence => true
  validates :status, :presence => true
end
