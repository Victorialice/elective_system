class User < ActiveRecord::Base
  has_secure_password
  has_many :appointments
  has_many :courses, through: :appointments
end
