class CreateStoreAdresses < ActiveRecord::Migration[7.1]
  def change
    create_table :store_adresses do |t|
      t.string :cep, null:false, limit: 10
      t.string :address, null:false, limit: 200
      t.integer :number, null:false, limit: 5
      t.string :neighborhood, null:false, limit: 200
      t.string :state, null:false, limit: 50
      t.string :country, null:false, limit: 60
      t.boolean :active, :default => true
      t.timestamp :deleted_at, null: true
      t.timestamps
    end
  end
end
