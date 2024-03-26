# frozen_string_literal: true

namespace :db do
  namespace :seed do
    desc 'seed storeemail' 
    task storeemail: :environment do
      2.times do
        StoreEmail.find_or_create_by(
          email: Faker::Internet.email,
          active: Faker::Boolean.boolean,
          deleted_at: nil,
          created_at: Time.now,
          updated_at: Time.now
        )
      end
      puts 'storeemail seeded successfully'
    end
  end
end
