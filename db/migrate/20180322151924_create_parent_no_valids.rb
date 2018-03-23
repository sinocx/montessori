class CreateParentNoValids < ActiveRecord::Migration[5.1]
  def change
    create_table :parent_no_valids do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :lang
      t.string :situation
      t.string :job
      t.string :fiscal
      t.string :address
      t.string :zip_code
      t.string :city
      t.string :phone
      t.string :mobile
      t.string :role
      t.references :subscription, foreign_key: true

      t.timestamps
    end
  end
end
