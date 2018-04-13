class SecondFormsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :action
  def index
    @parent_no_valids = ParentNoValid.where(subscription: @subscription)
    @child_no_valid = ChildNoValid.find(params[:child_no_valid_id])
  end
  def new
    @second_form = SecondForm.new
  end

  def create
    @child_no_valid = ChildNoValid.find(params[:child_no_valid_id])
    @second_form = SecondForm.new(second_form_params)
    @second_form.child_no_valid = @child_no_valid
    if @second_form.save!
      @subscription.update(status: 3)
      @subscription.parent_no_valids.each do|parent_no_valid|
        SubscriptionMailer.etape_2_3(parent_no_valid, @subscription, @child_no_valid).deliver_now
      end
      redirect_to inscription_success_path
    else
      render :new
    end
  end

  private

  def action
    @subscription = Subscription.find(params[:subscription_id])
    @child = ChildNoValid.find(params[:child_no_valid_id])
  end

  def second_form_params
    params.require(:second_form).permit(:canteen, :workshop, :nursery)
  end
end
