class Term < ApplicationRecord
  belongs_to :year

  def term_name
    "#{name} #{year.year}"
  end
end
