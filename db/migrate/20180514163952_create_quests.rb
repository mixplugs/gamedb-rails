class CreateQuests < ActiveRecord::Migration[5.2]
  def change
    create_table :quests do |t|
      t.string :name
      t.boolean :is_main
      t.smallint :level
      t.references :npc, foreign_key: true

      t.timestamps
    end
  end
end
