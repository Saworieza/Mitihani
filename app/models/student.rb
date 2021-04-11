class Student < ApplicationRecord
  belongs_to :classroom
  belongs_to :stream

  has_many :marks, dependent: :destroy
  has_many :payments, dependent: :destroy

  def stud_name
  	"#{adm_no}: #{first_name} #{last_name}"
  end

  def fee_amount
    fee.amount
  end

  def fee_amount=(id)
    self.fee = Fee.find_by_id(:id) if id.present?
  end
end
