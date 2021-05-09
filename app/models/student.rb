class Student < ApplicationRecord
  belongs_to :classroom
  belongs_to :stream

  has_many :marks, dependent: :destroy
  has_many :payments, dependent: :destroy
  
  def stud_name
  	"#{adm_no}: #{first_name} #{last_name}"
  end

  def stud_payments
    self.payments.sum(:amount)
  end

  def fee_balance()
    self.stream.fee
  end

  def course_payments(fee_id)
    payments.where(fee_id: fee_id).sum(:amount)
  end

  def student_results(subject_result_id, stream_id)
    
  end

end
