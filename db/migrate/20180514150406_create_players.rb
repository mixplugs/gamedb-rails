class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :level
      t.integer :health
      t.string :career
      t.references :server, foreign_key: true

      t.timestamps
    end
  end
end
