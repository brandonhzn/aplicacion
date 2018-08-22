class Place < ApplicationRecord
  belongs_to :category
  has_many :results
  has_many :users, through: :results
end
