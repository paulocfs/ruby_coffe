# frozen_string_literal: true

namespace :db do
  namespace :seed do
    desc 'seed storeabout'
    task storeabout: :environment do
      2.times do
        StoreAbout.find_or_create_by(
          vision: Faker::Lorem.paragraph_by_chars(number: 230, supplemental: false),
          history: Faker::Lorem.paragraph_by_chars(number: 195, supplemental: false),
          active: Faker::Boolean.boolean,
          created_at: Time.now,
          updated_at: Time.now
        )
      end
      puts 'storeabout seeded successfully'
    end
  end
end
