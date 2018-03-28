class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :subject
      t.string :full_name_parent
      t.string :child_full_name
      t.string :child_birth_date
      t.string :child_first_lang
      t.string :phone
      t.string :email
      t.text :message

      t.timestamps
    end
  end
end
