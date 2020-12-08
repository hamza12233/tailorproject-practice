class User < ApplicationRecord
  #relation to skills
  has_many  :tailor_skills
  has_many  :skills, through: :tailor_skills

  enum gender: { female: 'fem', male: 'mal' }
  enum role: { admin: 0, customer: 1, tailor: 2 }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
end
