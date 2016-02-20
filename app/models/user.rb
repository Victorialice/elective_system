class User < ActiveRecord::Base
  require 'carrierwave/orm/activerecord'

  #paginates_per 5

  has_secure_password
  has_many :appointments
  has_many :courses, through: :appointments

  mount_uploader :avatar, AvatarUploader
end
