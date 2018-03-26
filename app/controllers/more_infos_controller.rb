class MoreInfosController < ApplicationController
  def new
    @more_info = MoreInfo.new()
    @subscription = params[:subscription_id]
  end

  def create
    @more_info = MoreInfo.new(params_more_infos)
    @more_info.subscription_id = params[:subscription_id].to_i
    if @more_info.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def params_more_infos
    params.require(:more_info).permit(:know_the_school, :start_date, :child_atmosphere, :reason_why)
  end
end
