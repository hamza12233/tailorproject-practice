class Category < ApplicationRecord
     validates :name, length: { minimum: 5 }, presence: true
    has_many :tailor_skill
end
