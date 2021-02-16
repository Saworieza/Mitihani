class Year < ApplicationRecord
	has_many :classrooms
	has_many :terms
end
