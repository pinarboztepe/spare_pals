class Booking < ApplicationRecord
  belongs_to :pal
  belongs_to :user

  validates :start_date, :end_date, :comments, presence: true
end
