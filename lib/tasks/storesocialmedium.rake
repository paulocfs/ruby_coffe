# frozen_string_literal: true

namespace :db do
  namespace :seed do
    desc 'seed storesocialmedium'
    social_media = {
      facebook: 'www.facebook.com',
      instagram: 'www.instagram.com',
      linkedin: 'www.linkedin.com',
      twitter: 'www.twitter.com'
    }
    task storesocialmedium: :environment do
      social_media.each do |name, url|
        StoreSocialMedium.find_or_create_by(
          url: url,
          name: name,
          active: Faker::Boolean.boolean,
          created_at: Time.now,
          updated_at: Time.now
        )
      end
      puts 'storesocialmedia seeded successfully'
    end
  end
end
