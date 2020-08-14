class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses, dependent: :destroy
  as_one_attached :photo

  validates :name, uniqueness: true, presence: true
end
