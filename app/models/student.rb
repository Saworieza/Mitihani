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

  def fee_balance
    self.stream.fees(where)
  end

  # sum fees paid by their groups
  def fee_sum_groups
    
  end
end
