class Mark < ApplicationRecord
  belongs_to :subject_result
  belongs_to :student
end
