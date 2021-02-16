class Stream < ApplicationRecord
  belongs_to :classroom
  has_many :students

  def full_name
  	"#{classroom.name} #{name}, #{classroom.year.year}"
  end
end
