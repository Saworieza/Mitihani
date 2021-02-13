class Classroom < ApplicationRecord
  belongs_to :year
  has_many :streams
end
