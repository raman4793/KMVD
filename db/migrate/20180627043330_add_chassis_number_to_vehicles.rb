class AddChassisNumberToVehicles < ActiveRecord::Migration[5.0]
  def change
    add_column :vehicles, :chassis_number, :string
    add_column :vehicles, :engine_number, :string
    add_column :vehicles, :year_of_registration, :integer
    add_column :vehicles, :fuel_type, :string
    add_column :vehicles, :dealer_name, :string
    add_column :vehicles, :class_of_vehicle, :string
  end
end