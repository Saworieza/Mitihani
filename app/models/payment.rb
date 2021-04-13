class Payment < ApplicationRecord
  belongs_to :fee
  belongs_to :student
end
