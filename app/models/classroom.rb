class Classroom < ApplicationRecord
  belongs_to :year
  has_many :streams
  has_many :students
  has_many :fees

  def class_name
  	"#{number} #{name}"
  end
end
