class CreateMarks < ActiveRecord::Migration[5.2]
  def change
    create_table :marks do |t|
      t.integer :mark
      t.references :stream, foreign_key: true

      t.timestamps
    end
  end
end
