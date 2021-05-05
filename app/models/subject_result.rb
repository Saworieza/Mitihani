class SubjectResult < ApplicationRecord
  belongs_to :stream
  belongs_to :exam
  belongs_to :subject

  has_many :marks, inverse_of: :subject_result
  accepts_nested_attributes_for :marks, reject_if: :all_blank, allow_destroy: true

  def total
    self.marks.sum(:mark)
  end

  def subject_mean
    total / self.marks.count
  end

end
