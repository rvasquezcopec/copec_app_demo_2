class AddManyThingsToGasStations < ActiveRecord::Migration[5.2]
  def change
    add_column :gas_stations, :phone, :string
    add_column :gas_stations, :state, :string
  end
end
