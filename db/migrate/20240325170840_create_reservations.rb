class CreateReservations < ActiveRecord::Migration[7.1]
  def change
    create_table :reservations do |t|
      t.references :table, null:false, foreign_key: {to_table: "tables"} 	
      t.references :client, null:false, foreign_key: {to_table: "clients"} 	
      t.decimal :price_hour, null:false, precision:5, scale:2 	
      t.date :date, null:false 	
      t.time :hour, null:false 	
      t.integer :number_persons, null:false 	
      t.boolean :active, default:true, null:false 	
      t.datetime :deleted_at, default:nil, null:false 
      t.timestamps
    end
  end
end
