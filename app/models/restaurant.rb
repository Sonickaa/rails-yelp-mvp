class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian), message: "It is not a valid category"}
  has_many :reviews, dependent: :destroy
end
