class CreateWuserprofiles < ActiveRecord::Migration[5.1]
  def change
    create_table :wuserprofiles do |t|
      t.string :wusername
      t.string :wuserfirst
      t.string :wuserlast
      t.string :wuseremail

      t.timestamps
    end
  end
end
