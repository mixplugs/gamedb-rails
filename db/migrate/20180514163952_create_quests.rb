class CreateQuests < ActiveRecord::Migration[5.2]
  def change
    create_table :quests do |t|
      t.string      :name,      null: false
      t.boolean     :is_main,   null: false
      t.integer     :level,     null: false
      t.references  :npc,       foreign_key: true

      t.timestamps
    end
  end
end
