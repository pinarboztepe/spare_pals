class Booking < ApplicationRecord
  belongs_to :pal
  belongs_to :user
end
