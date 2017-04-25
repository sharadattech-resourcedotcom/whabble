class CreateVenuelocations < ActiveRecord::Migration[5.1]
  def change
    create_table :venuelocations do |t|
      t.string :venueadd1
      t.string :venueadd2
      t.string :venuecity
      t.string :venuestate
      t.string :venuepostal
      t.string :venuecountry
      t.string :venuelanguage

      t.timestamps
    end
  end
end
