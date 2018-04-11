class AddChildAtmosphereToChildNoValid < ActiveRecord::Migration[5.1]
  def change
    add_column :child_no_valids, :child_atmosphere, :integer
  end
end
