class AddTypeIdToVehicles < ActiveRecord::Migration[5.0]
  def change
    add_column :vehicles, :type_id, :integer
  end
end
