class User < ApplicationRecord

  attr_accessor :login

  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, and :omniauthable
  validates :username, 
            presence: true, 
            uniqueness: { case_sensitive: false }, 
            length: {maximum: 25}, 
            format: { with: /\A[a-zA-Z0-9 _\.]*\z/ }
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable, :confirmable
end
