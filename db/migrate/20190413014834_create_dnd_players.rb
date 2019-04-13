class CreateDndPlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :dnd_players do |t|
      t.string :name
      t.integer :age
      t.integer :race
      t.integer :gender
      t.integer :experience, default: 0
      t.text :description
      t.decimal :weight
      t.decimal :height

      t.timestamps
    end
  end
end
