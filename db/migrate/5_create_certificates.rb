class CreateCertificates < ActiveRecord::Migration[5.2]
  def change
    create_table :certificates do |t|
      t.string :name,  null: false

      t.timestamps
    end
    add_index :certificates, :name,  unique: true
  end
end
