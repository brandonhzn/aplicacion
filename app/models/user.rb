class User < ApplicationRecord
    has_many :results
    has_many :places, through: :results
    
    has_many :gservices
    has_many :services, through: :gservices

    has_many :gcapacities
    has_many :capacities, through: :gcapacities
end
