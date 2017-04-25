class CreateBusinesses < ActiveRecord::Migration[5.1]
  def change
    create_table :businesses do |t|
      t.string :busname
      t.string :busadd1
      t.string :busadd2
      t.string :buscity
      t.string :busstate
      t.string :buspostal
      t.string :string
      t.string :busphone
      t.string :buswebsite
      t.string :busphone
      t.string :busemail

      t.timestamps
    end
  end
end
