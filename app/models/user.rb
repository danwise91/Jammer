class User < ActiveRecord::Base
  has_secure_password
  validates :name, presence: true, length: {maximum: 50}
  validates :email, presence: true, length: {maximum: 100}
  has_many :bands_members
  has_many :bands, through: :bands_members
end
