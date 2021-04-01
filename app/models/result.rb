class Result < ApplicationRecord
  belongs_to :stream
  belongs_to :subject
  belongs_to :exam
  belongs_to :student

  has_many :marks, dependent: :destroy
  accepts_nested_attributes_for :marks
end
