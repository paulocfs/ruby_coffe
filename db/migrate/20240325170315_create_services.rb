class CreateServices < ActiveRecord::Migration[7.1]
  def change
    create_table :services do |t|
      t.string :name, limit:100, null:false 	
      t.text :description, limit:150, null:false 	
      t.boolean :active, default:true, null:false 	
      t.datetime :deleted_at, default:nil, null:true 
      t.timestamps
    end
  end
end
