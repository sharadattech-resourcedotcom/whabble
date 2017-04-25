class CreateWuserbusinesses < ActiveRecord::Migration[5.1]
  def change
    create_table :wuserbusinesses do |t|
      t.string :Wuserco
      t.string :wusercoadd1
      t.string :wusercoadd2
      t.string :wusercocity
      t.string :wusercostate
      t.string :wusercopostal
      t.string :wusercophone
      t.string :wusercoemail
      t.string :wusercotitle

      t.timestamps
    end
  end
end
