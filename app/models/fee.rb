class Fee < ApplicationRecord
  belongs_to :year
  belongs_to :classroom
  belongs_to :stream

  has_many :payments, dependent: :destroy
  has_many :voteheads, inverse_of: :fee
  accepts_nested_attributes_for :voteheads, reject_if: :all_blank, allow_destroy: true
  
  def gok_total
    self.voteheads.sum(:gok)
  end

  def parent_total
  	self.voteheads.sum(:parent)
  end

  def yearly_fee
    parent_total + gok_total
  end

  def total_fees
    yearly_fee * self.stream.students.count
  end

  def balances
  	(yearly_fee * self.stream.students.count) - self.payments.sum(:amount)
  end
  
  def particular_fee
    student.stream.fees.where(id: self.id)
  end
end
