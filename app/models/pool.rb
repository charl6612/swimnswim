class Pool < ApplicationRecord
  belongs_to :user
  has_many :rentals
  mount_uploader :pictures, PhotoUploader
end
