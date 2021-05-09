class AddStudentToSubjectResult < ActiveRecord::Migration[5.2]
  def change
    add_column :subject_results, :student_id, :integer
  end
end
