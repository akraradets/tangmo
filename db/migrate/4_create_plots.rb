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
      t.string :addressNo
      t.string :addressMoo
      t.string :addressTambon
      t.string :addressAmphoe
      t.string :addressProvince
      t.string :addressZipcode
      t.float :lat
      t.float :long

      t.timestamps
    end
    add_index :plots, [:lat, :long]
  end
end
