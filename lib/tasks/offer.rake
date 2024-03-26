# frozen_string_literal: true

namespace :db do
  namespace :seed do
    desc 'seed offer'
    task offer: :environment do
      Offer.find_or_create_by(
        initial_date: Faker::Date.in_date_period,
        final_date: Faker::Date.in_date_period,
        description: Faker::Lorem.paragraph_by_chars(number: 45, supplemental: false),
        day_week: 'sexta-feira',
        active: Faker::Boolean.boolean,
        deleted_at: nil,
        created_at: Time.now,
        updated_at: Time.now
      )
      puts 'offer seeded successfully'
    end
  end
end
