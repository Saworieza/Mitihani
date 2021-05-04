class Exam < ApplicationRecord
  belongs_to :term
  has_many :subject_results, dependent: :destroy

  def exam_name
  	"#{term.name}, #{term.year.year} : #{name}"
  end
end
