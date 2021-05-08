class Term < ApplicationRecord
  belongs_to :year
  has_many :exams, dependent: :destroy

  def term_name
    "#{name} #{year.year}"
  end
end
