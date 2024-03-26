class Store < ApplicationRecord


  validates :name,
            length: { maximum: 25 },
            presence: true,
            uniqueness: true,
            allow_nil: false,
            allow_blank: false,
            on: %i[create update]

  validates :date_inauguration,
            length: { maximum: 10 },
            presence: true,
            allow_nil: false,
            allow_blank: false,
            on: %i[create update]
end
