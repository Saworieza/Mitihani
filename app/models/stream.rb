class Stream < ApplicationRecord
  belongs_to :classroom
  has_many :students
  has_many :subject_results
  has_many :fees #should just have one per stream

  def full_name
  	"#{classroom.name} #{name}, #{classroom.year.year}"
  end
end
