# app/models/restaurant.rb

class Restaurant < ApplicationRecord
  # Validations
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :category, presence: true, inclusion: { in: %w(Indian Italian Japanese Mexican American),
                                                    message: "%{value} is not a valid category" }

  # Associations
  has_many :reviews, dependent: :destroy
end
