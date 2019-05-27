class User < ApplicationRecord
  has_many :pools
  has_many :rentals
end
