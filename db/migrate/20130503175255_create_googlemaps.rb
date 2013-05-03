class CreateGooglemaps < ActiveRecord::Migration
  def change
    create_table :googlemaps do |t|
      t.string :location_type
      t.string :address
      t.float :longitude
      t.float :latitude
      t.boolean :gmaps

      t.timestamps
    end
  end
end
