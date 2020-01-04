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
      t.references :address, foreign_key: true

      t.timestamps
    end
  end
end
