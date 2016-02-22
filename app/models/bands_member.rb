class BandsMember < ActiveRecord::Base
  belongs_to :band
  belongs_to :member, class_name: "User"
  #band --- users (has many)
  #1 join table
  #2 write model association w/class name + foreign key 
end
