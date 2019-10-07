class CreatePlots < ActiveRecord::Migration[5.2]
  def change
    create_table :plots do |t|
      t.references :farmer, foreign_key: true
      t.float :areaRai
      t.integer :treeNumber
      t.string :breed
      t.date :plantDate
      t.float :lat
      t.float :long
      t.references :certificate, foreign_key: true
      t.string :harvestPeriod
      t.string :harvestQuantity
      t.string :harvestProcedure
      t.float :price
      t.string :policy
      t.string :fertilizeProcedure
      t.string :market
      t.string :logistic
      t.string :addressNo
      t.string :addressMoo
      t.string :addressTambon
      t.string :addressAmphoe
      t.string :addressProvince
      t.string :addressZipcode

      t.timestamps
    end
    add_index :plots, [:lat, :long]
  end
end
