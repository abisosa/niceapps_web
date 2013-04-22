class Offer < ActiveRecord::Base
  attr_accessible :date, :message, :status

  has_one :receiver, :class_name => 'User', :foreign_key => 'sender_id'
  belongs_to :sender, :class_name => 'User'
  has_one :disk
end
