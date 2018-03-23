class CreateMoreInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :more_infos do |t|
      t.string :know_the_school
      t.string :start_date
      t.string :reason_why
      t.string :child_atmosphere
      t.references :subscription, foreign_key: true

      t.timestamps
    end
  end
end
