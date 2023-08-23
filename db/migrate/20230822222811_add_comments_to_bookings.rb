class AddCommentsToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :comments, :string
  end
end
