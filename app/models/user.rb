class User < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true
  has_many :microposts
  has_secure_password
  validates :password, length: { minimum: 6}
end
