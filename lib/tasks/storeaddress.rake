# frozen_string_literal: true

namespace :db do
  namespace :seed do
    desc 'seed storeaddress'
    task storeaddress: :environment do
      2.times do
        StoreAddress.find_or_create_by(
          cep: Faker::Address.zip_code,
          street: Faker::Address.street_name,
          number: Faker::Address.building_number,
          neighborhood: Faker::Address.community,
          state: Faker::Address.state_abbr,
          country: Faker::Address.country,
          active: Faker::Boolean.boolean,
          deleted_at: nil,
          created_at: Time.now,
          updated_at: Time.now
        )
      end
      puts 'storeaddress seeded successfully'
    end
  end
end
