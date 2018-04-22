class CreateFines < ActiveRecord::Migration[5.0]
  def change
    create_table :fines do |t|
      t.string :reason
      t.float :amt

      t.timestamps
    end
  end
end
