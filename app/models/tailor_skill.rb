class TailorSkill < ApplicationRecord
    belongs_to :user
    belongs_to :skill
    belongs_to :categories
end
