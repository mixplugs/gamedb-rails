class CreateReceives < ActiveRecord::Migration[5.2]
  def change
    create_table :receives do |t|
      t.references :quest, foreign_key: true
      t.references :player, foreign_key: true

      t.timestamps
    end
  end
end
