class User < ApplicationRecord
  has_many :plans
  has_many :favourites
  has_many :trainings
  validates :first_name, presence: true, uniqueness: true ,length: { in: 3..50 }
  validates :last_name, presence: true, uniqueness: true ,length: { in: 3..50 }
  validates :email, presence: true, uniqueness: true ,length: { in: 3..50 }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
