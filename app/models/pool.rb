class Pool < ApplicationRecord
  belongs_to :user
  has_many :rentals
  has_many :reviews
  mount_uploader :picture, PhotoUploader
  mount_uploader :picture1, PhotoUploader
  mount_uploader :picture2, PhotoUploader

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
