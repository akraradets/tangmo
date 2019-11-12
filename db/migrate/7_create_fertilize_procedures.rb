class CreateFertilizeProcedures < ActiveRecord::Migration[5.2]
  def change
    create_table :fertilize_procedures do |t|
      t.string :name

      t.timestamps
    end
  end
end
