class CreateWusersocials < ActiveRecord::Migration[5.1]
  def change
    create_table :wusersocials do |t|
      t.string :wuserfb
      t.string :wusertwitter
      t.string :wusergp

      t.timestamps
    end
  end
end
