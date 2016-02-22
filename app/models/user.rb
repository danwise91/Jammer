class User < ActiveRecord::Base
  has_secure_password
  validates :name, presence: true, length: {maximum: 50}
  validates :email, presence: true, length: {maximum: 100}
  has_many :bands_members
  has_many :bands, through: :bands_members
end

def self.create_from_soundcloud(access_token)

  create! do |user|
    user.soundcloud_user_id = soundcloud_user["id"]
    user.soundcloud_access_token = access_token["access_token"]
  end
end
