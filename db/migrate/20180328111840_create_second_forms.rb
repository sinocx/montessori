class CreateSecondForms < ActiveRecord::Migration[5.1]
  def change
    create_table :second_forms do |t|
      t.integer :nursery
      t.integer :canteen

      t.timestamps
    end
  end
end
