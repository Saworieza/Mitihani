class Fee < ApplicationRecord
  belongs_to :stream
  belongs_to :year
  belongs_to :subject

  has_many :payments, dependent: :destroy
  has_many :voteheads, inverse_of: :fee
  accepts_nested_attributes_for :voteheads, reject_if: :all_blank, allow_destroy: true

end
