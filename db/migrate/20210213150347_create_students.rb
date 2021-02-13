class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.integer :adm_no
      t.string :first_name
      t.string :last_name
      t.references :classroom, foreign_key: true
      t.references :stream, foreign_key: true

      t.timestamps
    end
  end
end
