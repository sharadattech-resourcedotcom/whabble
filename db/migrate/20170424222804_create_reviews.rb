class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :reviewtitle
      t.integer :reviewscore
      t.text :reviewtext

      t.timestamps
    end
  end
end
