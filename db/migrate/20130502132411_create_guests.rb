class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.boolean :plus_one
      t.string :plus_guest_first_name
      t.string :plus_guest_last_name
      t.boolean :guest_rsvp
      t.boolean :plus_guest_rsvp

      t.timestamps
    end
  end
end
