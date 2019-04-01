class AddUserToGasStations < ActiveRecord::Migration[5.2]
  def change
    add_reference :gas_stations, :user, foreign_key: true
  end
end
