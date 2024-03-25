class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.references :category, null:false, foreign_key: {to_table: "categories"} 	
      t.string :name, limit:50, null:false	
      t.string :description, limit:100, null:false
      t.decimal :price, null:false, precision:5, scale:2 	
      t.boolean :active, default:true, null:false 	
      t.datetime :deleted_at, default:nil, null:true 
      t.timestamps
    end
  end
end
