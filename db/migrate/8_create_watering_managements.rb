class CreateWateringManagements < ActiveRecord::Migration[5.2]
  def change
    create_table :watering_managements do |t|
      t.string :name

      t.timestamps
    end
  end
end
