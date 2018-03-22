class CreateChildNoValids < ActiveRecord::Migration[5.1]
  def change
    create_table :child_no_valids do |t|
      t.string :first_name
      t.string :last_name
      t.date :birth_date
      t.string :gender
      t.string :nursery
      t.text :montessori_before
      t.string :nationality
      t.string :first_lang
      t.string :snd_lang
      t.string :workshop
      t.string :comment
      t.references :subscription, foreign_key: true

      t.timestamps
    end
  end
end
