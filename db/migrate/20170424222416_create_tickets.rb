class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
      t.string :ticketname
      t.string :ticketperformer
      t.datetime :ticketeventdate
      t.string :ticketseatsec
      t.string :ticketseatlevel
      t.string :ticketseatrow
      t.string :ticketseat
      t.string :ticketprice

      t.timestamps
    end
  end
end
