class Event < ApplicationRecord
  belongs_to :organizer, class_name: 'User'
  has_many :event_attendances
  has_many :attendees, through: 'event_attendances', source: 'user'
  scope :past, -> { where("date < ?", Date.today) }
  scope :upcoming, -> { where("date >= ?", Date.today) }
end
