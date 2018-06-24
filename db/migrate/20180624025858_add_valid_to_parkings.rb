class AddValidToParkings < ActiveRecord::Migration[5.0]
  def change
    add_column :parkings, :occupied, :boolean, default: true
  end
end
