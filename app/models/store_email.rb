class StoreEmail < ApplicationRecord

  validates :email,
            length: { maximum: 50 },
            presence: true,
            uniqueness: true,
            allow_nil: false,
            allow_blank: false,
            on: %i[create update]

  validates :active, inclusion: [true, false], allow_nil: false, allow_blank: false, on: %i[create update]
end
