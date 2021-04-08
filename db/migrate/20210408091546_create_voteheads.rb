class CreateVoteheads < ActiveRecord::Migration[5.2]
  def change
    create_table :voteheads do |t|
      t.string :votehead
      t.decimal :GOK
      t.decimal :parent
      t.references :fee, foreign_key: true

      t.timestamps
    end
  end
end
