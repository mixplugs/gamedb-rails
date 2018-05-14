class CreateNpcs < ActiveRecord::Migration[5.2]
  def change
    create_table :npcs do |t|
      t.text :dialogue

      t.timestamps
    end
    
    ActiveRecord::Base.connection.execute(<<~SQL
      alter table npcs 
      add constraint fk_npcs_creatures
      foreign key (id) 
      REFERENCES creatures (id);
    SQL)

  end
end
