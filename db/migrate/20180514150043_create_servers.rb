class CreateServers < ActiveRecord::Migration[5.2]
  def change
    create_table :servers do |t|
      t.boolean :running

      t.timestamps
    end
  end
end
