class CreateParkings < ActiveRecord::Migration[5.0]
  def change
    create_table :parkings do |t|
      t.references :spot, foreign_key: true
      t.references :vehicle, foreign_key: true

      t.timestamps
    end
  end
end
