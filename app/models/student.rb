class Student < ApplicationRecord
  belongs_to :classroom
  belongs_to :stream
end
