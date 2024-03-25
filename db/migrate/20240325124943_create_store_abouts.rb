class CreateStoreAbouts < ActiveRecord::Migration[7.1]
  def change
    create_table :store_abouts do |t|
      t.text :vision, limit:230, null:false
      t.text :history, limit:195, null:false
      t.boolean :active, default:true, null:false
      t.timestamps
    end
  end
end
