class AddParkedToVehicles < ActiveRecord::Migration[5.0]
  def change
    add_column :vehicles, :parked, :boolean, default: false
  end
end
