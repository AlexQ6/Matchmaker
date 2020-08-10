class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :picture
  after_create :default_role 

  private 
  def default_role
    self.add_role(:user) if self.roles.blank?

  end
end
