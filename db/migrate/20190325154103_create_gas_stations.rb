class CreateGasStations < ActiveRecord::Migration[5.2]
  def change
    create_table :gas_stations do |t|
      t.integer :id_station
      t.string :name
      t.string :image
      t.string :address

      t.timestamps
    end
  end
end
