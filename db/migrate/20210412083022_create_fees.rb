class CreateFees < ActiveRecord::Migration[5.2]
  def change
    create_table :fees do |t|
      t.string :package
      t.references :year, foreign_key: true
      t.references :classroom, foreign_key: true
      t.references :stream, foreign_key: true

      t.timestamps
    end
  end
end
