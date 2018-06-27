class AddAvailabilityToSpots < ActiveRecord::Migration[5.0]
  def change
    add_column :spots, :availability, :boolean
  end
end
