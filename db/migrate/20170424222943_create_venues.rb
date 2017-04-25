class CreateVenues < ActiveRecord::Migration[5.1]
  def change
    create_table :venues do |t|
      t.string :venuename
      t.string :venuedescription
      t.string :venuetagline
      t.string :venueurl
      t.string :venuephone
      t.string :venueemail

      t.timestamps
    end
  end
end
