class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string      :name,      null: false
      t.integer     :level,     null: false
      t.integer     :health,    null: false
      t.string      :career,    null: false
      t.references  :server,    foreign_key: true

      t.timestamps
    end
  end
end
