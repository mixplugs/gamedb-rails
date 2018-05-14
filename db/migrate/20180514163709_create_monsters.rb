class CreateMonsters < ActiveRecord::Migration[5.2]
  def change
    create_table :monsters do |t|
      t.integer     :health,    null: false
      t.integer     :level,     null: false
      t.integer     :attack,    null: false

      t.timestamps
    end

    execute <<~SQL
      ALTER TABLE monsters 
      ADD CONSTRAINT fk_monsters_creatures
      FOREIGN KEY (id) 
      REFERENCES creatures (id);
    SQL

  end
end
