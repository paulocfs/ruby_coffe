FactoryBot.define do

  factory :store do
    name { Faker::Company.name }
    date_inauguration { Faker::Date.in_date_period }
  end

end
