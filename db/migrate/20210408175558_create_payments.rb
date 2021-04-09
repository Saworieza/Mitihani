class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.decimal :amount
      t.string :method
      t.date :date
      t.references :student, foreign_key: true
      t.references :fee, foreign_key: true

      t.timestamps
    end
  end
end
