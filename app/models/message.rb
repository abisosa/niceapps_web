class Message < ActiveRecord::Base
  attr_accessible :content, :disk_id, :user_id
   belongs_to :user
   has_many :responses, :class_name => 'Message', :foreign_key => 'response_id'

  validates :user_id, presence: true
end
