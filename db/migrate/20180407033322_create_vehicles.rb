class CreateVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicles do |t|
      t.string :file_name
      t.string :name
      t.string :model
      t.string :vnumber
<<<<<<< HEAD
      t.datetime :insurance_expiry_date
      t.datetime :pollution_expiry_date
=======

>>>>>>> 298d345999cccd116452ea795bb154ecabdc7090
      t.timestamps
    end
  end
end
