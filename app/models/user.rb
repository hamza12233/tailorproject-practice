class User < ApplicationRecord
  acts_as_token_authenticatable
  before_create :set_auth_token

  #relation to skills
  has_many  :tailor_skills
  has_many  :skills, through: :tailor_skills

  enum gender: { female: 'fem', male: 'mal' }
  enum role: { admin: 0, customer: 1, tailor: 2 }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable, :validatable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable 
  


  private

    def set_auth_token
      return if auth_token.present?

      begin
        self.auth_token = SecureRandom.hex
      end while self.class.exists?(auth_token: self.auth_token)
    end
end
