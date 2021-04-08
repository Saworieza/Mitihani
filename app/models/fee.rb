class Fee < ApplicationRecord
  belongs_to :stream
  belongs_to :year
  belongs_to :subject

  has_many :voteheads, inverse_of: :fee
  accepts_nested_attributes_for :voteheads, reject_if: :all_blank, allow_destroy: true

  def sum_gok
    self.voteheads.sum(:GOK)
  end
end
