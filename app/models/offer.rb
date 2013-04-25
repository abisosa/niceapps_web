class Offer < ActiveRecord::Base
  attr_accessible :message, :status, :reply_message

  has_one :receiver, :class_name => 'User', :foreign_key => 'receiver_id'
  belongs_to :sender, :class_name => 'User'
  has_one :disk
end
