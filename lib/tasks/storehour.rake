# frozen_string_literal: true

namespace :db do
  namespace :seed do
    desc 'seed storehour'
    task storehour: :environment do
      StoreHour.find_or_create_by(
        monday: "#{8.hour.ago.strftime('%H:%M:%S')}  -  #{Time.current.strftime('%H:%M:%S')}",
        tuesday: "#{8.hour.ago.strftime('%H:%M:%S')}  -  #{Time.current.strftime('%H:%M:%S')}",
        wednesday: "#{8.hour.ago.strftime('%H:%M:%S')}  -  #{Time.current.strftime('%H:%M:%S')}",
        thursday: "#{8.hour.ago.strftime('%H:%M:%S')}  -  #{Time.current.strftime('%H:%M:%S')}",
        friday: "#{8.hour.ago.strftime('%H:%M:%S')}  -  #{Time.current.strftime('%H:%M:%S')}",
        saturday: "#{8.hour.ago.strftime('%H:%M:%S')}  -  #{Time.current.strftime('%H:%M:%S')}",
        sunday: 'close',
        created_at: Time.now,
        updated_at: Time.now
      )
      puts 'storehour seeded successfully'
    end
  end
end
