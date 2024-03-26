class CreateOffers < ActiveRecord::Migration[7.1]
  def change
    create_table :offers do |t|
      t.date :initial_date, null:false 	
      t.date :final_date, null:false 	
      t.text :description, limit:45, null:false	
      t.string :day_week, limit:20, null:false	
      t.boolean :active, default:true, null:false 	
      t.datetime :deleted_at, default:nil, null:true 
      t.timestamps
    end
  end
end
