class Review < ApplicationRecord
  belongs_to :pool
  belongs_to :user
end
