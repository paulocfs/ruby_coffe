class Store < ApplicationRecord

  validates :name,
    length: {maximum:200},
    presence:true,
    allow_nil:false,
    allow_blank:false,
    on:[:create, :update]

  validates :date_inauguration,
    presence: true,
    allow_nil: false,
    allow_blank: false,
    on:[:create, :update]

  
  
end
