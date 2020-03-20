class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  
  has_many :organized_events, class_name: 'Event', foreign_key: 'organizer_id'
  has_many :event_attendances
  has_many :attended_events, through: 'event_attendances', source: 'event'

end
