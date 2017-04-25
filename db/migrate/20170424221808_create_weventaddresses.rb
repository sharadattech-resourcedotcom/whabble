class CreateWeventaddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :weventaddresses do |t|
      t.string :weventadd1
      t.string :weventadd2
      t.string :string
      t.string :weventcity
      t.string :weventstate
      t.string :weventpostal
      t.string :weventurl

      t.timestamps
    end
  end
end
