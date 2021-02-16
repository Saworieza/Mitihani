class CreateTerms < ActiveRecord::Migration[5.2]
  def change
    create_table :terms do |t|
      t.string :name
      t.references :year, foreign_key: true

      t.timestamps
    end
  end
end
