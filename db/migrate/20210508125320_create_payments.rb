class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.string :TransactionId
      t.date :date
      t.decimal :amount
      t.string :bank
      t.string :method
      t.references :student, foreign_key: true
      t.references :fee, foreign_key: true

      t.timestamps
    end
  end
end
