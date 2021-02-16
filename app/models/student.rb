class Student < ApplicationRecord
  belongs_to :classroom
  belongs_to :stream

  def stud_name
  	"#{adm_no}: #{first_name} #{last_name}"
  end
end
