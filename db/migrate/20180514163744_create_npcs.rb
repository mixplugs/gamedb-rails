class CreateNpcs < ActiveRecord::Migration[5.2]
  def change
    create_table :npcs do |t|
      t.text        :dialogue

      t.timestamps
    end
    
    execute <<~SQL
      ALTER TABLE npcs 
      ADD CONSTRAINT fk_npcs_creatures
      FOREIGN KEY (id) 
      REFERENCES creatures (id);
    SQL

  end
end
