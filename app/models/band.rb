class Band < ActiveRecord::Base
  has_many :bands_members
  has_many :members, through: :bands_members, class_name: "User", foreign_key: "member_id"
  # has_many :members, through: :bands_members, class_name: "User", foreign_key: "member_id"
end
