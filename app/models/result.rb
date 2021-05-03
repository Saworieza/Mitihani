class Result < ApplicationRecord
  belongs_to :stream
  belongs_to :subject
  belongs_to :exam
  # belongs_to :student

  has_many :marks, inverse_of: :result
  accepts_nested_attributes_for :marks, reject_if: :all_blank, allow_destroy: true

end
