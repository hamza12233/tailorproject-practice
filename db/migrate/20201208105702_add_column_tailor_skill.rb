class AddColumnTailorSkill < ActiveRecord::Migration[6.0]
  def change
    add_column :tailor_skills, :description, :text
    add_column :tailor_skills, :skill_id, :integer
  end
end
