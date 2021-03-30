class HomeController < ApplicationController
  before_action :set_year, only: %i[ show edit update destroy ]
  def index
  	@years = Year.all
  end
end
