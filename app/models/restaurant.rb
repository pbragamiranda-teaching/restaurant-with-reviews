class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy            # @restaurant.reviews
end
