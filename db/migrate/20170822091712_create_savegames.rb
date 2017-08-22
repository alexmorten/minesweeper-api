class CreateSavegames < ActiveRecord::Migration[5.0]
  def change
    create_table :savegames do |t|
      t.string :name
      t.integer :score
      t.integer :size, default: 5

      t.timestamps
    end
  end
end
