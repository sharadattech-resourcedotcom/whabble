class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.string :reservationname
      t.integer :resqty
      t.datetime :resdate

      t.timestamps
    end
  end
end
