class CreatePlots < ActiveRecord::Migration[5.2]
  def change
    create_table :plots do |t|
      t.references :farmer, foreign_key: true
      t.float :areaRai
      t.integer :treeCount
      t.string :breed
      t.string :project
      t.string :certificate
      t.date :certificateDate
      t.string :harvestPeriod
      t.string :harvestQuantity
      t.string :price
      t.string :plotManagement
      t.string :fertilizeManagement
      t.string :waterManagement
      t.string :illnessManagement
      t.string :harvestManagement
      t.string :sellingChannel
      t.string :logistic

      t.string :houseNo ,null: false, default: ""
      t.string :moo     ,null: false, default: ""
      t.string :tambon  ,null: false, default: ""
      t.string :amphoe  ,null: false, default: ""
      t.string :province,null: false, default: ""
      t.string :zipcode ,null: false, default: ""
      t.float :lat      ,null: true
      t.float :long     ,null: true

      t.timestamps
    end
  end
end
