class User < ApplicationRecord
  has_many :pools
  has_many :rentals
  has_many :reviews
  mount_uploader :avatar, PhotoUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def clients
    self.pools.map {|pool| pool.rentals}.flatten.map(&:user)
  end
end
