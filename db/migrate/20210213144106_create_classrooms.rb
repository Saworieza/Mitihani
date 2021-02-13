class CreateClassrooms < ActiveRecord::Migration[5.2]
  def change
    create_table :classrooms do |t|
      t.string :name
      t.integer :number
      t.references :year, foreign_key: true

      t.timestamps
    end
  end
end
