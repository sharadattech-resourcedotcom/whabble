class CreateWusercontacts < ActiveRecord::Migration[5.1]
  def change
    create_table :wusercontacts do |t|
      t.string :wuseradd1
      t.string :wuseradd2
      t.string :wusercity
      t.string :wuserstate
      t.string :wuserpostal
      t.string :wuserphone

      t.timestamps
    end
  end
end
