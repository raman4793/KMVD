class AddInsuranceToVehicle < ActiveRecord::Migration[5.0]
  def change
    add_column :vehicles, :insurance_expiry_date, :datetime
    add_column :vehicles, :pollution_expiry_date, :datetime

  end
end
