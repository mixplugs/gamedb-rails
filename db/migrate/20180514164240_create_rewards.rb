class CreateRewards < ActiveRecord::Migration[5.2]
  def change
    create_table :rewards, id: false do |t|
      t.references  :quest,     foreign_key: true
      t.references  :item,      foreign_key: true
      t.integer     :quantity,  null: false

      t.timestamps
    end

    execute <<~SQL
      ALTER TABLE rewards 
      ADD PRIMARY KEY (quest_id, item_id);
    SQL

  end
end
