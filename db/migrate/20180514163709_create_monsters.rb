class CreateMonsters < ActiveRecord::Migration[5.2]
  def change
    create_table :monsters do |t|
      t.integer :health
      t.integer :level
      t.integer :attack

      t.timestamps
    end

    ActiveRecord::Base.connection.execute(<<~SQL
      alter table monsters 
      add constraint fk_monsters_creatures
      foreign key (id) 
      REFERENCES creatures (id);
    SQL)

  end
end
