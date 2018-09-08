class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :user_type
  belongs_to :university
  has_many :projects, through: :has_user_project 
  validates :name, presence: true
  validates :email, presence: true ,uniqueness: true


 
  before_create->{self.token= generate_token}

  private
  def generate_token
  loop do
      token= SecureRandom.hex
      return token unless User.exists?({token:token})     
  end 
  end
         
end
