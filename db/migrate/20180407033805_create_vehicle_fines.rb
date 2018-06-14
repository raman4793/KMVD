class CreateVehicleFines < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicle_fines do |t|
      t.references :vehicle, foreign_key: true
      t.references :fine, foreign_key: true

      t.timestamps
    end
  end
end
