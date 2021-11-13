class User < ApplicationRecord
  has_many :plans
  has_many :favourites
  has_many :trainings
end
