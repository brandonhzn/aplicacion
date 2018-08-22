class User < ApplicationRecord

    has_secure_password
    validates_presence_of :nombre, :email, :password_digest

    has_many :results
    has_many :places, through: :results
    
    has_many :gservices
    has_many :services, through: :gservices

    has_many :gcapacities
    has_many :capacities, through: :gcapacities
end
