class ArticleUser < ApplicationRecord
  after_create :send_email
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, 
         :trackable

  private
  
  def send_email
    ArticleUserMailer.welcome_email(self).deliver_now
  end
end
