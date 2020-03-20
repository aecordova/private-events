class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  
  has_many :organized_events, class_name: 'Event', foreign_key: 'organizer_id'

end
