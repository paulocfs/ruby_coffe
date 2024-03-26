# frozen_string_literal: true

namespace :db do 
  namespace :seed do
    desc 'seed store' 
    task store: :environment do 
      Store.find_or_create_by(
        name: 'rubby coffe',
        date_inauguration: Faker::Date.in_date_period,
        created_at: Time.now,
        updated_at: Time.now
      )
      puts 'store seeded successfully'
    end
  end
end
