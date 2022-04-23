class Customer < ApplicationRecord
    has_many :order
    validates :name, presence: true
    validates :email, presence: true, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/
end
