class User < ApplicationRecord
  has_secure_password

  belongs_to :user_type
  belongs_to :university
  has_many :has_user_project, dependent: :destroy 
  has_many :projects, through: :has_user_project
  has_many :appreciations

  
  validates :name, presence: true
  validates :doc, presence: true, uniqueness: true
  validates :password, presence: true,length: { minimum: 8 }
  validates :email, presence: true ,uniqueness: true, format: { with: /(\A([a-z]*\s*)*\<*([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\>*\Z)/i }
  
  before_save :titlelize_names

  def titlelize_names
    self.name = self.name.titleize
  end
  
  before_create->{self.token= generate_token}
 

  private
  def generate_token
    loop do
        token= SecureRandom.hex
        return token unless User.exists?({token:token})     
    end 
  end

  
  
end
