class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.integer :code
      t.string :short
      t.string :name

      t.timestamps
    end
  end
end
