class CreateMarks < ActiveRecord::Migration[5.2]
  def change
    create_table :marks do |t|
      t.integer :mark
      t.references :student, foreign_key: true
      t.references :result, foreign_key: true

      t.timestamps
    end
  end
end
