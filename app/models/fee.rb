class Fee < ApplicationRecord
  belongs_to :year
  belongs_to :classroom
  belongs_to :stream
end
