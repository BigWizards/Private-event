class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :event_attendances, foreign_key: "attended_event_id"
  has_many :attendees, class_name: "User", through: :event_attendances, source: :attendee

  scope :past, -> { where("date < ?", DateTime.now) }
  scope :upcoming, -> { where("date >= ?", DateTime.now) }
end
