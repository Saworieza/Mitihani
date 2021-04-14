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
end
