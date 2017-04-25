class CreateWevents < ActiveRecord::Migration[5.1]
  def change
    create_table :wevents do |t|
      t.string :weventname
      t.string :weventdesc
      t.datetime :weventstart
      t.datetime :weventstop
      t.string :weventcat
      t.string :weventtype
      t.binary :weventrepeat
      t.binary :weventprivate
      t.binary :weventbusy

      t.timestamps
    end
  end
end
