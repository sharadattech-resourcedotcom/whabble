class CreateVenuesocials < ActiveRecord::Migration[5.1]
  def change
    create_table :venuesocials do |t|
      t.string :venuefb
      t.string :venuetwitter
      t.string :venuegp

      t.timestamps
    end
  end
end
