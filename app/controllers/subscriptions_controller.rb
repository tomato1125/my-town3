class SubscriptionsController < ApplicationController
  # before_action :set_recruitment
  # before_action :set_user

  def new
    @recruitment = Recruitment.find(params[:recruitment_id])
    @subscription = Subscription.new
  end

  def create
    Subscription.new(subscription_params)
  end


  private
  def subscription_params
    params.require(:subscription).permit(:name, :phonetic, :email, :tel, :currentAdress, :resume, :recruitment_id).merge(employee_id: current_user.id)
    # params.require(:recruitment).permit(:recruitment_id)
  end
end
