class CreateDocToSigns < ActiveRecord::Migration[5.1]
  def change
    create_table :doc_to_signs do |t|
      t.string :document

      t.timestamps
    end
  end
end
