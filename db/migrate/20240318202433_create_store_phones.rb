class CreateStorePhones < ActiveRecord::Migration[7.1]
  def change
    create_table :store_phones do |t|
      t.string :phone, limit:15, null:false
      t.boolean :active, default:true, null:false
      t.datetime :deleted_at, default:nil, null:true
      t.timestamps
    end
  end
end
