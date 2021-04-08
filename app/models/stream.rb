class Stream < ApplicationRecord
  belongs_to :classroom
  has_many :students
  has_many :results
  has_many :fees #should just have one

  def full_name
  	"#{classroom.name} #{name}, #{classroom.year.year}"
  end
end
