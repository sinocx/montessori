class SecondFormsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @second_form = SecondForm.new
    @subscription = Subscription.find(params[:subscription_id])
    @child = ChildNoValid.find(params[:child_no_valid_id])
  end

  def create
    @second_form = SecondForm.new(second_form_params)
    @subscription = params[:subscription_id]
    @second_form.subscription_id = @subscription
    if @second_form.save
      redirect_to inscription_success_path
    else
      render :new
    end
  end

  private

  def second_form_params
    params.require(:second_form).permit(:canteen, :workshop, :nursery)
  end
end
