class Pal < ApplicationRecord
  belongs_to :user
  has_many :bookings
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  has_one_attached :photo
end
