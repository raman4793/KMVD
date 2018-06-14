class CreateSpots < ActiveRecord::Migration[5.0]
  def change
    create_table :spots do |t|
      t.string :name
      t.boolean :free
      t.references :type, foreign_key: true

      t.timestamps
    end
  end
end
