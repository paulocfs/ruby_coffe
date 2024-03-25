class CreateCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :categories do |t|
      t.string :name, limit:25, null:false 	
      t.boolean :active, default:true, null:false 	
      t.datetime :deleted_at, default:nil, null:false 
      t.timestamps
    end
  end
end
