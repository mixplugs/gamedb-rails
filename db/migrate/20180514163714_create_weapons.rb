class CreateWeapons < ActiveRecord::Migration[5.2]
  def change
    create_table :weapons do |t|
      t.integer     :attack,    null: false
      t.string      :type,      null: false

      t.timestamps
    end

    execute <<~SQL
      ALTER TABLE weapons 
      ADD CONSTRAINT fk_weapons_items
      FOREIGN KEY (id) 
      REFERENCES items (id);
    SQL

  end
end
