class CreateFarmers < ActiveRecord::Migration[5.2]
  def change
    create_table :farmers do |t|
      t.string :title
      t.string :firstName
      t.string :lastName
      t.date :dateOfBirth
      t.references :organization, foreign_key: true
      t.string :addressNo
      t.string :addressMoo
      t.string :addressTambon
      t.string :addressAmphoe
      t.string :addressProvince
      t.string :addressZipcode
      t.string :phoneNo
      t.string :facebook
      t.string :line
      t.string :email

      t.timestamps
    end
    add_index :farmers, [:firstName, :lastName]
  end
end
