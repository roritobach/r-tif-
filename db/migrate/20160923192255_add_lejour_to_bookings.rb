class AddLejourToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :jour, :string
  end
end
