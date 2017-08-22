class CreateFields < ActiveRecord::Migration[5.0]
  def change
    create_table :fields do |t|
      t.references :savegame, foreign_key: true
      t.boolean :is_mine, default: false
      t.boolean :marked, default: false
      t.boolean :used, default: false
      t.integer :x
      t.integer :y

      t.timestamps
    end
    add_index :fields, [:savegame_id,:x,:y],unique:true
  end
end
