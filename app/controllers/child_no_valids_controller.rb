class ChildNoValidsController < ApplicationController
  def new
    @child = ChildNoValid.new()
    @subscription = params[:subscription_id]

  end

  def create
    @subscription = params[:subscription_id]
    @child = ChildNoValid.new(child_no_valids_params)
    @child.subscription_id =  params[:subscription_id]
    if @child.save
        redirect_to new_subscription_parent_no_valid_path(@subscription,@parent)
    else
      render :new
    end
  end
  private

  def child_no_valids_params
    params.require(:child_no_valid).permit(:first_name,
                                           :last_name,
                                           :gender,
                                           :birth_date,
                                           :nationality,
                                           :first_lang,
                                           :snd_lang,
                                           :montessori_before,
                                           :workshop,
                                           :nursery,
                                           :comment,
                                           :subscription_id)
  end
end
