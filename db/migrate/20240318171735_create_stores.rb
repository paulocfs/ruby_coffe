class CreateStores < ActiveRecord::Migration[7.1]
  def change
    create_table :stores do |t|
      t.string :name, limit:25, null:false
      t.date :date_inauguration, null:false
      t.timestamps
    end
  end
end
