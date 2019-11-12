class CreateHarvestProcedures < ActiveRecord::Migration[5.2]
  def change
    create_table :harvest_procedures do |t|
      t.string :name

      t.timestamps
    end
  end
end
