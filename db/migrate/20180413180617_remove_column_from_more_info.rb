class RemoveColumnFromMoreInfo < ActiveRecord::Migration[5.1]
  def change
    remove_column :more_infos, :start_date
    remove_column :more_infos, :child_atmosphere
  end
end
