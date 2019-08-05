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


  # send welcome mail after user created
  after_create :send_admin_mail
  

  def send_admin_mail
    UserMailer.send_new_user_message(self).deliver
  end

  private
  def confirmation_token
    if self.confirm_token.blank?
        self.confirm_token = SecureRandom.urlsafe_base64.to_s
    end
  end
    
end
