FactoryBot.define do
  factory :store_adress do
    cep { "MyString" }
    address { "MyString" }
    number { 1 }
    neighborhood { "MyString" }
    state { "MyString" }
    country { "MyString" }
    active { false }
    deleted_at { "2024-03-19 12:27:54" }
  end
end
