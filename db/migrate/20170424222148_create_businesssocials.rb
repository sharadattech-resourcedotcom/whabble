class CreateBusinesssocials < ActiveRecord::Migration[5.1]
  def change
    create_table :businesssocials do |t|
      t.string :busfb
      t.string :bustwitter
      t.string :busgp

      t.timestamps
    end
  end
end
