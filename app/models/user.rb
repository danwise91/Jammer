class User < ActiveRecord::Base
  has_secure_password
  validates :name, presence: true, length: {maximum: 100}
  validates :email, presence: true, length: {maximum: 100}
  has_many :bands_members, foreign_key: "member_id"

  has_many :bands, through: :bands_members

  def self.create_from_soundcloud(soundcloud_user, access_token)
    create! do |user|
      user.soundcloud_user_id = soundcloud_user["id"]
      user.soundcloud_access_token = access_token["access_token"]
      user.name = 'a'
      user.email = 'a'
      user.password = SecureRandom.urlsafe_base64
    end
  end
end
#make sure create from soundcloud is within the user's scope because it is a class method
