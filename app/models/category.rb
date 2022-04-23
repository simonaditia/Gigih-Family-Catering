class Category < ApplicationRecord
    has_many :categories_foods
    has_many :foods, through: :categories_foods
    validates :name, presence: true, uniqueness: true
end
