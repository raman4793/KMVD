class CreateVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicles do |t|
      t.string :file_name
      t.string :name
      t.string :model
      t.string :vnumber
      t.datetime :insurance_expiry_date
      t.datetime :pollution_expiry_date
      t.timestamps
    end
  end
end
