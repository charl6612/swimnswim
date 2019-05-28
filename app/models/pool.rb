class Pool < ApplicationRecord
  belongs_to :user
  has_many :rentals
  mount_uploader :picture, PhotoUploader
end
