class OrderDetail < ApplicationRecord
    belongs_to :order
    belongs_to :food

    validates :order_id, presence: true
    validates :food_id, presence: true
    validates :quantity, presence: true, numericality: true

    before_create :find_food_price

    def find_food_price
        Food.by_id(self.food_id).each do |food|
            self.price = food.price.to_i
        end
    end

    def find_food_name
        Food.by_id(self.food_id).each do |food|
            return food.name
        end
    end

    def count_total_price
        total = self.quantity * self.price
    end

    def self.by_order_id(id)
        where("order_id = #{id}").order(:order_id)
    end
end
