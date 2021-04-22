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

  def particular_fee
    self.stream.fees.where(id: @fee.id)
  end

end
