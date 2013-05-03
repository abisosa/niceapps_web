class Message < ActiveRecord::Base
  attr_accessible :content, :disk_id, :username
  belongs_to :user
  has_many :responses, :class_name => 'Message', :foreign_key => 'response_id'
  belongs_to :disk

  validates :username, presence: true

  def as_json(args={})
    options ||= {}
    super(:include => :disk)
  end

end
