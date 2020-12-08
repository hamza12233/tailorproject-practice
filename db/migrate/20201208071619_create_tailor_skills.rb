class CreateTailorSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :tailor_skills do |t|
      t.integer :user_id
      t.integer :experience
      t.integer :category_id
      t.timestamps
    end
  end
end
