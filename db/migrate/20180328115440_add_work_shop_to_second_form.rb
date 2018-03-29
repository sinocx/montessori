class AddWorkShopToSecondForm < ActiveRecord::Migration[5.1]
  def change
    add_column :second_forms, :workshop, :integer
  end
end
