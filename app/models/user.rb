class User < ApplicationRecord
  has_secure_password
  validates_uniqueness_of :email
  validates :email, presence: true
  validates :firstname, presence: true
  validates :lastname, presence: true
end
