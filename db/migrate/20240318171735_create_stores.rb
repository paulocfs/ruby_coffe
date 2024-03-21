class CreateStores < ActiveRecord::Migration[7.1]
  def change
    create_table :stores do |t|
      t.string :name, null: false, limit: 200
      t.date :date_inauguration, null: false
      t.timestamps
    end
  end
end
