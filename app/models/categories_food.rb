class CategoriesFood < ApplicationRecord
    belongs_to :category, optional: true
    belongs_to :food, optional: true
    validates :category_id, presence: true
    validates :food_id, presence: true
end
