class Result < ApplicationRecord
  belongs_to :stream
  belongs_to :subject
  belongs_to :exam
end
