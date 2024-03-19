class StoreAdress < ApplicationRecord

  validates :cep, 
    format: { with: /\A\d{5}-\d{3}\z/},
    length: { minimum: 8, maximum: 10 },
    presence: true,
    allow_nil: false,
    allow_blank: false,
    on: [:create, :update]

  validates :address,
    length: { maximum: 200 },
    presence: true,
    allow_nil: false,
    allow_blank: false,
    on: [:create, :update]

  validates :number,
    numericality: {only_integer: true},
    presence: true,
    allow_nil: false,
    allow_blank: false,
    on: [:create, :update]

  validates :neighborhood,
    length: { maximum: 200 },
    presence: true,
    allow_nil: false,
    allow_blank: false,
    on: [:create, :update]

  validates :state,
    length: { maximum: 50 },
    presence: true,
    allow_nil: false,
    allow_blank: false,
    on: [:create, :update]


  validates :country,
    length: { maximum: 60 },
    presence: true,
    allow_nil: false,
    allow_blank: false,
    on: [:create, :update]

  validates :active, 
    inclusion: { in: [true, false] },
    allow_nil: false,
    allow_blank: false,
    on: [:create, :update]


  validates :deleted_at,
    presence: true, 
    allow_nil: true,
    allow_blank: false,
    on: [:delete]

end
