class CreateDndPlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :dnd_players do |t|
      t.string :name
      t.integer :age
      t.integer :race
      t.integer :gender
      t.integer :dnd_class
      t.text :description
      t.decimal :weight
      t.decimal :height

      t.timestamps
    end
  end
end
