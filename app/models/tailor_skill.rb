class TailorSkill < ApplicationRecord
    belongs_to :user
    has_many :skills
    belongs_to :category
end
