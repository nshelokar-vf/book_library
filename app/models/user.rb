class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
      
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  

  has_many :books, dependent: :destroy

end
