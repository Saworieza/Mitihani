class CreateFees < ActiveRecord::Migration[5.2]
  def change
    create_table :fees do |t|
      t.string :package
      t.decimal :amount, scale: 2, precision: 8
      t.references :stream, foreign_key: true
      t.references :year, foreign_key: true
      t.references :subject, foreign_key: true

      t.timestamps
    end
  end
end
