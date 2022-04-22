class Food < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :price, numericality: { greater_than_or_equal_to: 0.01 }
    validates :description, length: { maximum: 150 }
end
