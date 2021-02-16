class Exam < ApplicationRecord
  belongs_to :term

  def exam_name
  	"#{term.name}, #{term.year.year} : #{name}"
  end
end
