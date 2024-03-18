class CreateStoreEmails < ActiveRecord::Migration[7.1]
  def change
    create_table :store_emails do |t|
      t.string :email, null: false
      t.boolean :active, :default => true
      t.datetime :deleted_at, null: true, default: nil

      t.timestamps
    end
  end
end
