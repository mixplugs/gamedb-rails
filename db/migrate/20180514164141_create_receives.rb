class CreateReceives < ActiveRecord::Migration[5.2]
  def change
    create_table :receives, id: false do |t|
      t.references :quest, foreign_key: true
      t.references :player, foreign_key: true

      t.timestamps
    end

    execute "ALTER TABLE receives ADD PRIMARY KEY (quest_id,player_id);"

  end
end
