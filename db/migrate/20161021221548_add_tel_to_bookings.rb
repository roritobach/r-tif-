class AddTelToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :tel, :string
  end
end
