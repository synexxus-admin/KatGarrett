class Googlemap < ActiveRecord::Base
  attr_accessible :address, :gmaps, :latitude, :location_type, :longitude

  acts_as_gmappable

def gmaps4rails_address
#describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
  "#{self.address}" 
end


end

