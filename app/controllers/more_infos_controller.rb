class MoreInfosController < ApplicationController
  skip_before_action :authenticate_user!
  def new
    @more_info = MoreInfo.new()
    @subscription = params[:subscription_id]
  end

  def create
    @subscription = params[:subscription_id]
    @more_info = MoreInfo.new(params_more_infos)
    @more_info.subscription_id = @subscription
    if @more_info.save
      redirect_to subscription_success_path
    else
      render :new
    end
  end

  private

  def params_more_infos
    params.require(:more_info).permit(:know_the_school, :reason_why)
  end
end
