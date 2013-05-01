class Disk < ActiveRecord::Base
  attr_accessible :artist, :conditions, :interest, :image_encoding, :status, :title

  validates :title, :presence => true
  validates :status, :presence => true
end
