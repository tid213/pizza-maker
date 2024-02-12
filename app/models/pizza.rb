class Pizza < ApplicationRecord
    has_many :toppings
    validates :name, presence: true, :uniqueness => true,
                    length: { minimum: 3 }
                    
end
