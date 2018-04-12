class AddReferencesToSecondForm < ActiveRecord::Migration[5.1]
  def change
    add_reference :second_forms, :child_no_valid, foreign_key: true
  end
end
