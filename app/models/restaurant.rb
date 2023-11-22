class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, :category, :address, presence: true
  validates :category, inclusion: CATEGORY
end
