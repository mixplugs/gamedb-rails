class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.integer     :health,    null: false

      t.timestamps
    end

    execute <<~SQL
      ALTER TABLE foods 
      ADD CONSTRAINT fk_foods_items
      FOREIGN KEY (id) 
      REFERENCES items (id);
    SQL

  end
end
