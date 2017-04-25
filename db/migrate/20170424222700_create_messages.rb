class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.string :messagesubj
      t.string :messagecontent
      t.string :messagerecipients

      t.timestamps
    end
  end
end
