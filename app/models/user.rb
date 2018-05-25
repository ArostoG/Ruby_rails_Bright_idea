class User < ActiveRecord::Base
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
  validates :name, :alias,:password, presence:true,length:{in: 3..20}
  validates :password, presence:true,length:{in: 8..20}
  
  has_secure_password
  has_many :likes
  has_many :posts
end
