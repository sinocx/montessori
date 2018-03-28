class SecondFormsController < ApplicationController
  def new
    @second_form = SecondForm.new
    @subscription = params[:subscription_id]

  end

  def create
    @second_form = SecondForm.new(second_form_params)
    @subscription = params[:subscription_id]
    @second_form.subscription_id = @subscription
    if @second_form.save
      redirect_to root_path
    else
      render :new
    end
  end
  private

  def second_form_params
    params.require(:second_form).permit(:canteen, :workshop, :nursery)
  end
end
