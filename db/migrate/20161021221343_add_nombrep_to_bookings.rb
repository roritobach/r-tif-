class AddNombrepToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :nombrep, :integer
  end
end
