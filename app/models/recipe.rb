class Recipe < ApplicationRecord
  validates :name,presence: true,length: {maximum: 30}
  validates :description,presence: true,length: {maximum: 255}
  belongs_to :chef
  validates :chef_id,presence: true
  has_many :recipes_ingredients
  has_many :ingredients, through: recipes_ingredients
  has_many :comments,dependent: :destroy
end
