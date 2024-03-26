# frozen_string_literal: true

namespace :db do
  namespace :seed do
    desc 'seed client'
    task client: :environment do
      25.times do |i|
        client = Client.new(
          email: "#{i}_Faker::Internet.email",
          password: '123456',
          password_confirmation: '123456',
          fisrt_name: Faker::Name.first_name,
          last_name: Faker::Name.last_name,
          profession: Faker::Lorem.sentence(word_count: 1),
          active: Faker::Boolean.boolean,
          uid_google: nil,
          avatar_url_google: nil,
          deleted_at: nil,
          reset_password_token: nil,
          reset_password_sent_at: nil,
          remember_created_at: nil,
          created_at: Time.now,
          updated_at: Time.now
        )
        client.save
      end
      puts 'client seeded successfully'
    end
  end
end
