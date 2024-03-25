class CreateStoreHours < ActiveRecord::Migration[7.1]
  def change
    create_table :store_hours do |t|
      t.string :monday, default:'close', limit:30, null:false
      t.string :tuesday, default:'close', limit:30, null:false	
      t.string :wednesday, default:'close', limit:30, null:false 	
      t.string :thursday, default:'close', limit:30, null:false
      t.string :friday, default:'close', limit:30, null:false 	
      t.string :saturday, default:'close', limit:30, null:false 	
      t.string :sunday, default:'close', limit:30, null:false
      t.timestamps
    end
  end
end
