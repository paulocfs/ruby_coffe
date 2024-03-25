class CreateTables < ActiveRecord::Migration[7.1]
  def change
    create_table :tables do |t|
      t.string :name, limit:25, null:false 	
      t.integer :total_persons, null:false 	
      t.text :description, limit:150, null:false 	
      t.boolean :active, null:false 	
      t.datetime :deleted_at, default:nil, null:false 
      t.timestamps
    end
  end
end
