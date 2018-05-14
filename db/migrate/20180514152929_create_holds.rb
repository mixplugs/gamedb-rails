class CreateHolds < ActiveRecord::Migration[5.2]
  def change
    create_table :holds do |t|
      t.integer :quantity
      t.references :player, foreign_key: true
      t.references :item, foreign_key: true

      t.timestamps
    end
  end
end
