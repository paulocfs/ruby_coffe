class CreateNewsletters < ActiveRecord::Migration[7.1]
  def change
    create_table :newsletters do |t|
      t.string :email, limit:50, null:false, index: { unique: true}
      t.boolean :active, default:true, null:false
      t.boolean :adm_notified, default:false, null:false
      t.timestamps
    end
  end
end
