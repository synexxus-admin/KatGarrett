class Guest < ActiveRecord::Base
  attr_accessible :email, :first_name, :guest_rsvp, :last_name, :plus_guest_first_name, :plus_guest_last_name, :plus_guest_rsvp, :plus_one
end
