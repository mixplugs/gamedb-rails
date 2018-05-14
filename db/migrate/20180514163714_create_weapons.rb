class CreateWeapons < ActiveRecord::Migration[5.2]
  def change
    create_table :weapons do |t|
      t.integer :attack
      t.string :type

      t.timestamps
    end

    ActiveRecord::Base.connection.execute(<<~SQL
      alter table weapons 
      add constraint fk_weapons_items
      foreign key (id) 
      REFERENCES items (id);
    SQL
    )

  end
end
