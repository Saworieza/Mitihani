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

  def fee_payments
    # fee_paid = self.payments.group_by(&:fee).each do |fee, payments|
  end
end
