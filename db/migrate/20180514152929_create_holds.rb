class CreateHolds < ActiveRecord::Migration[5.2]
  def change
    create_table :holds, id: false do |t|
      t.integer     :quantity,  null: false
      t.references  :player,    foreign_key: true
      t.references  :item,      foreign_key: true

      t.timestamps
    end

    execute <<~SQL
      ALTER TABLE holds 
      ADD PRIMARY KEY (player_id, item_id);
    SQL

  end
end
