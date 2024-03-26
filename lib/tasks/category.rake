# frozen_string_literal: true

namespace :db do
  namespace :seed do
    desc 'seed category'
    categories = { hot_coffe: 'café quente', ice_coffe: 'café gelado' }
    task category: :environment do
      categories.each_value do |description|
        Category.find_or_create_by(
          name: description,
          active: Faker::Boolean.boolean,
          deleted_at: nil,
          created_at: Time.now,
          updated_at: Time.now
        )
      end
      puts 'category seeded successfully'
    end
  end
end
