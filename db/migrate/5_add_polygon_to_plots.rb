class AddPolygonToPlots < ActiveRecord::Migration[5.2]
  def change
    add_column :plots, :polygon, :string, :limit => 5000, null: false, default: "[]"
  end
end