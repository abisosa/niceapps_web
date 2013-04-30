class Disk < ActiveRecord::Base
  attr_accessible :artist, :conditions, :interest, :pic_path, :status, :title

  validates :title, :presence => true
  validates :status, :presence => true
end
