# frozen_string_literal: true

namespace :db do
  namespace :seed do
    desc 'seed product'
    task product: :environment do
      12.times do
        Product.find_or_create_by(
          name: Faker::Commerce.product_name,
          description: Faker::Lorem.paragraph_by_chars(number: 100, supplemental: false),
          price: Faker::Commerce.price,
          category_id: [1, 2].sample,
          active: Faker::Boolean.boolean,
          deleted_at: nil,
          created_at: Time.now,
          updated_at: Time.now
        )
      end
      puts 'product seeded successfully'
    end
  end
end
