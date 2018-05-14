class CreateDrops < ActiveRecord::Migration[5.2]
  def change
    create_table :drops, id: false do |t|
      t.references  :monster,   foreign_key: true
      t.references  :item,      foreign_key: true

      t.timestamps
    end

    execute <<~SQL
      ALTER TABLE drops 
      ADD PRIMARY KEY (monster_id, item_id);
    SQL

  end
end
