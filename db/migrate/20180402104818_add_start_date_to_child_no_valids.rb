class AddStartDateToChildNoValids < ActiveRecord::Migration[5.1]
  def change
    add_column :child_no_valids, :start_date, :date
  end
end
