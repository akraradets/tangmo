class CreateFarmerAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :farmer_addresses do |t|
      t.references :farmer, foreign_key: true
      t.string :houseNo ,null: false, default: ""
      t.string :moo     ,null: false, default: ""
      t.string :tambon  ,null: false, default: ""
      t.string :amphoe  ,null: false, default: ""
      t.string :province,null: false, default: ""
      t.string :zipcode ,null: false, default: ""

      t.timestamps
    end
  end
end
