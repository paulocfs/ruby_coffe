# frozen_string_literal: true

namespace :db do
  namespace :seed do
    desc 'seed service'
    task service: :environment do
      12.times do
        Service.find_or_create_by(
          name: Faker::Lorem.sentence(word_count: 3),
          description: Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false),
          active: Faker::Boolean.boolean,
          deleted_at: nil,
          created_at: Time.now,
          updated_at: Time.now
        )
      end
      puts 'service seeded successfully'
    end
  end
end
