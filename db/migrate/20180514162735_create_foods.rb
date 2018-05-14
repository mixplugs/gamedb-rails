class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.integer :health

      t.timestamps
    end
    
    ActiveRecord::Base.connection.execute(<<~SQL
      alter table foods 
      add constraint fk_foods_items
      foreign key (id) 
      REFERENCES items (id);
    SQL)

  end
end
