class CreateStoreEmails < ActiveRecord::Migration[7.1]
  def change
    create_table :store_emails do |t|
      t.string :email, limit:50, null:false, index: { unique: true}
      t.boolean :active, default:true, null:false
      t.datetime :deleted_at, default:nil, null:true
      t.timestamps
    end
  end
end
