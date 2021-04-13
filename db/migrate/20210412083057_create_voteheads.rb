class CreateVoteheads < ActiveRecord::Migration[5.2]
  def change
    create_table :voteheads do |t|
      t.string :votehead
      t.decimal :gok
      t.decimal :parent

      t.timestamps
    end
  end
end
