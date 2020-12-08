class Skill < ApplicationRecord
    
    has_many  :tailor_skills
    has_many  :users, through: :tailor_skills
end
