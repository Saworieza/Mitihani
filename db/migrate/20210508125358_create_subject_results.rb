class CreateSubjectResults < ActiveRecord::Migration[5.2]
  def change
    create_table :subject_results do |t|
      t.references :classroom, foreign_key: true
      t.references :stream, foreign_key: true
      t.references :exam, foreign_key: true
      t.references :subject, foreign_key: true

      t.timestamps
    end
  end
end
