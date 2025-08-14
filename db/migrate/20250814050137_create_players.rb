class CreatePlayers < ActiveRecord::Migration[8.0]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :hp
      t.integer :attack

      t.timestamps
    end
  end
end
