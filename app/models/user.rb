class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  validates :name, presence: true

  has_and_belongs_to_many :roles
  has_many :channels
  has_many :keywords
  has_many :orders
  has_many :estimates
    
end
