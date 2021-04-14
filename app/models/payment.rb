class Payment < ApplicationRecord
  belongs_to :fee
  belongs_to :student

  def student_adm
    student.try(:adm_no)
  end

  def student_adm=(adm_no)
    self.student = Student.find_by_adm_no(adm_no) if adm_no.present?
  end
end
