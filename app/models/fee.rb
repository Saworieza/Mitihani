class Fee < ApplicationRecord
  belongs_to :stream
  belongs_to :year
  belongs_to :subject
end
