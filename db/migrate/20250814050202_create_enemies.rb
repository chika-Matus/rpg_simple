class CreateEnemies < ActiveRecord::Migration[8.0]
  def change
    create_table :enemies do |t|
      t.string :name
      t.integer :hp
      t.integer :attack

      t.timestamps
    end
  end
end
