# frozen_string_literal: true

namespace :db do
  namespace :seed do
    desc 'seed storephone'
    task storephone: :environment do
      2.times do
        StorePhone.find_or_create_by(
          phone: Faker::PhoneNumber.cell_phone_with_country_code,
          active: Faker::Boolean.boolean,
          deleted_at: nil,
          created_at: Time.now,
          updated_at: Time.now
        )
      end
      puts 'storephone seeded successfully'
    end
  end
end
