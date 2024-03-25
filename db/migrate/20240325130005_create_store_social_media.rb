class CreateStoreSocialMedia < ActiveRecord::Migration[7.1]
  def change
    create_table :store_social_media do |t|
      t.string :url, limit:100, null:false
      t.string :name, limit:50, null:false
      t.boolean :active, default:true, null:false
      t.timestamps
    end
  end
end
