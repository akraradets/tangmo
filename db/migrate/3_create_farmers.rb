class CreateFarmers < ActiveRecord::Migration[5.2]
  def change
    create_table :farmers do |t|
      t.string :title
      t.string :firstName
      t.string :lastName
      t.date :dateOfBirth
      t.string :group
      t.string :phone
      t.string :email
      t.string :facebook
      t.string :line
      t.string :addressNo
      t.string :addressMoo
      t.string :addressTambon
      t.string :addressAmphoe
      t.string :addressProvince
      t.string :addressZipcode

      t.timestamps
    end
  end
end
