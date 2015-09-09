class Event < ActiveRecord::Base
  validates :occurs_at, presence: true
  validates :location, presence: true

  validates :location, uniqueness: {
    scope: :occurs_at,
    message: 'an event is already scheduled there at that time',
    case_sensitive: false
  }
end
