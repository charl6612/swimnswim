class Pool < ApplicationRecord
  belongs_to :user
  has_many :rentals
  has_many :reviews
  mount_uploader :picture, PhotoUploader
end
