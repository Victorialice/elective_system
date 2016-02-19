class Course < ActiveRecord::Base
  has_many :appointments
  has_many :users, through: :appointments
  MAXIMUM = 6
end
