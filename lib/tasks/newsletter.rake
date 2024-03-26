# frozen_string_literal: true

namespace :db do
  namespace :seed do
    desc 'seed newsletter'
    task newsletter: :environment do
      5.times do 
        Newsletter.find_or_create_by(
          email: Faker::Internet.email,
          active: Faker::Boolean.boolean,
          adm_notified: Faker::Boolean.boolean,
          created_at: Time.now,
          updated_at: Time.now
        )
      end
      puts 'newsletter seeded successfully'
    end
  end
end
