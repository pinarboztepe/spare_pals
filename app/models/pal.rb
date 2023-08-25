class Pal < ApplicationRecord
  belongs_to :user
  has_many :bookings
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  has_one_attached :photo

  validates :name, presence: true
  validates :location, presence: true
  validates :price, presence: true
  validates :emoji, presence: true
  # validates :intro, presence: true
  validates :job, presence: true
  validates :word, presence: true
  validates :photo, presence: true
end
