class CreateFarmers < ActiveRecord::Migration[5.2]
  def change
    create_table :farmers do |t|
      t.string :title       ,null: false
      t.string :firstName   ,null: false
      t.string :lastName    ,null: false
      t.string :dateOfBirth ,null: false, default: ""
      t.string :group       ,null: false, default: ""
      t.string :phone       ,null: false, default: ""
      t.string :email       ,null: false, default: ""
      t.string :facebook    ,null: false, default: ""
      t.string :line        ,null: false, default: ""
      t.references :address, foreign_key: true

      t.timestamps
    end
    add_index :farmers, [:firstName, :lastName]
  end
end
