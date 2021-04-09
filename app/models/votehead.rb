class Votehead < ApplicationRecord
  belongs_to :fee

  def sum_parent
    Voteheads.sum(:parent)
    # self.voteheads.sum(:GOK) + self.voteheads.sum(:parent)
  end
end
