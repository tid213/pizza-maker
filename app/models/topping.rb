class Topping < ApplicationRecord
  belongs_to :pizza
  validates :name, presence: true, :uniqueness => true,
                    length: { minimum: 3 }
end
