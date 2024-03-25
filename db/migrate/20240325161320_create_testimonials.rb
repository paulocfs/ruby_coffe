class CreateTestimonials < ActiveRecord::Migration[7.1]
  def change
    create_table :testimonials do |t|
      t.references :client, null:false, foreign_key: {to_table: 'clients'}
      t.text :body, limit:115, null:true
      t.boolean :read_admin, default:false, null:false
      t.boolean :active, default:true, null:false
      t.datetime :deleted_at, default:nil, null:true
      t.timestamps
    end
  end
end
