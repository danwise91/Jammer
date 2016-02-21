class BandsMember < ActiveRecord::Base
  belongs_to :band
  belongs_to :member, class_name: "User", foreign_key: "member_id"
end
