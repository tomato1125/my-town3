class RecruitmentsController < ApplicationController

  def new
    @recruitment = Recruitment.new
  end
end
