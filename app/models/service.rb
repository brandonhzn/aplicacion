class Service < ApplicationRecord
    has_many :gservices
    has_many :users, through: :gservices
end
