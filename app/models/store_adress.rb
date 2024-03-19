class StoreAdress < ApplicationRecord

  validates :cep, 
    presence: true,
    format: { with: /\A\d{5}-\d{3}\z/},
    length: { minimum: 8, maximum: 10 },
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
    length: { maximum: 5 },
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
    on: [:create, :update]


  validates :deleted_at,
    presence: true, 
    allow_nil: true,
    allow_blank: false,
    on: [:create, :update, :delete]

end
