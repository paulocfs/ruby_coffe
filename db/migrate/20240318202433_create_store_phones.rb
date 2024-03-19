class CreateStorePhones < ActiveRecord::Migration[7.1]
  def change
    create_table :store_phones do |t|
      t.string :phone, null:false
      t.boolean :active, :default => true
      t.datetime :deleted_at, null: true

      t.timestamps
    end
  end
end
