class Course < ActiveRecord::Base
  has_many :appointments
  has_many :users, throught: :appointments
  MAXIMUM = 6
end
