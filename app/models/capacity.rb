class Capacity < ApplicationRecord
    has_many :gcapacities
    has_many :users, through: :gcapacities
end
