class CreateMonsters < ActiveRecord::Migration[5.2]
  def change
    create_table :monsters do |t|
      t.integer :health
      t.smallint :level
      t.integer :attack

      t.timestamps
    end
  end
end
