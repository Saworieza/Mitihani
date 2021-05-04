class Classroom < ApplicationRecord
  # validates :year_id, uniqueness: true only if the classname doesnt match the one you are tryna create for the year

  belongs_to :year
  has_many :streams
  has_many :students
  has_many :fees

  def class_name
  	"#{name} #{year.year}"
  end
end
