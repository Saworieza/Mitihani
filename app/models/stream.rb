class Stream < ApplicationRecord
  belongs_to :classroom
  has_many :students

  def full_name
  	"#{stream.classroom.name} #{stream.name}, #{stream.classroom.year.year}"
  end
end
