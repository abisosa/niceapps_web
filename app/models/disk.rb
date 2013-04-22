class Disk < ActiveRecord::Base
  attr_accessible :artist, :conditions, :interest, :pic_path, :status, :title
  belongs_to :user
  belongs_to :offers

  validates :title, :presence => true
  validates :pic_path, :presence => true
  validates :status, :presence => true
end
