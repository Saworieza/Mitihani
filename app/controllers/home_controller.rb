class HomeController < ApplicationController
  before_action :set_year, only: %i[ show edit update destroy ]
  before_action :set_student, only: %i[ show edit update destroy ]
  
  def index
  	@years = Year.all
    @students = Student.all
  end
end
