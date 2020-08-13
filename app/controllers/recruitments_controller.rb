class RecruitmentsController < ApplicationController

  def index
    @recruitments = Recruitment.includes(:user).order("created_at DESC")
  end

  def new
    @recruitment = Recruitment.new
  end

  def create
    Recruitment.create(recruitment_params)
  end

  def show
    @recruitment = Recruitment.find(params[:id])
  end

  private
  def recruitment_params
    params.require(:recruitment).permit(:campany, :image, :numberOfEmployees, :feature, :workLocation, :eligibleEmployees, :workingHours, :insurance, :wellfare, :prefecture_id, :industry_id, :position_id, :occupation_id, :income_id, :title, :jobDescription, :vacation).merge(user_id: current_user.id)
  end
end
