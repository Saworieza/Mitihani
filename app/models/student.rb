class Student < ApplicationRecord
  belongs_to :classroom
  belongs_to :stream
  has_many :marks, dependent: :destroy

  def stud_name
  	"#{adm_no}: #{first_name} #{last_name}"
  end
end
