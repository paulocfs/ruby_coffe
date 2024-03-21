require 'faker'




def custom_cep
  Faker::Number.number(digits: 5).to_i.to_s + "-" + Faker::Number.number(digits: 3).to_i.to_s
end

def custom_number
  Faker::Number.number(digits: 5)
end


1.times do
  Store.find_or_create_by(
    name: "ruby coffe",
    date_inauguration: "2024-03-18",
  )
end

2.times do
  StoreAdress.find_or_create_by(
    cep: custom_cep,
    address: Faker::Address.street_address,
    number: custom_number,
    neighborhood: Faker::Address.community,
    state: Faker::Address.state,
    country: Faker::Address.country,
    active: true,
    deleted_at: nil
  )
end
