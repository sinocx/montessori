class AddReferencesToSecondForm < ActiveRecord::Migration[5.1]
  def change
    add_reference :second_forms, :subscription, foreign_key: true
  end
end
