class Classroom < ApplicationRecord
  belongs_to :year
  has_many :streams
  has_many :students
end
