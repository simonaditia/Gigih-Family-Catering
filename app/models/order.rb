class Order < ApplicationRecord
    belongs_to :customer
    has_many :order_details

    def find_customer
        Customer.by_id(self.customer_id).each do |customer|
            return customer.email
        end
    end

    def self.report_today
        where("order_date LIKE ?", "#{Date.current}%").order(:id)
    end

    def find_by_email(email)
        where("email LIKE ?", "#{email}%").order(:id)
    end

    def count_total_price
        total = []
        OrderDetail.by_order_id(self.id).each do |order_detail|
            total << order_detail.quantity * order_detail.price
        end
        return total.inject(0){ |sum, x| sum + x}
    end
end