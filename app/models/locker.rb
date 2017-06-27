class Locker < ApplicationRecord
  has_one :reservation, dependent: :destroy
end
