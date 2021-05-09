class Stream < ApplicationRecord
  belongs_to :classroom
  has_many :students
  has_many :subject_results

  has_one :fee
  has_many :fees

  def full_name
  	"#{classroom.name} #{name}, #{classroom.year.year}"
  end
end
