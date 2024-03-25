class CreateStoreAdresses < ActiveRecord::Migration[7.1]
  def change
    create_table :store_adresses do |t|
      t.string :cep, limit:10, null:false
      t.string :street, limit:100, null:false
      t.string :number, limit:50, null:false
      t.string :neighborhood, limit:50, null:false
      t.string :state, limit:5, null:false
      t.string :country, limit:75, null:false
      t.boolean :active, default:true, null:false
      t.datetime :deleted_at, default:nil, null:true
      t.timestamps
    end
  end
end
