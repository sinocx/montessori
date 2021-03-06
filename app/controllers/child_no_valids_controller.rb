class ChildNoValidsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @child = ChildNoValid.new()
    @subscription = params[:subscription_id]
  end

  def create
    @subscription = params[:subscription_id]
    good_params = child_no_valids_params.reject{ |k, v| k == "birth_date(3i)" || k == "birth_date(2i)" || k == "birth_date(1i)" }
    good_params["birth_date"] = defineBirthDate
    @child = ChildNoValid.new(good_params)
    @child.subscription_id =  params[:subscription_id]
    if @child.save
      next_step
    else
      render :new
    end
  end

  def update
    @subscription = params[:subscription_id]
    @child_no_valid = ChildNoValid.find(params[:id])
    if @parent_no_valid.update(parent_no_valids_params)
      respond_to do |format|
        format.js
        format.html { render 'parent_no_valids/update'}
      end
    end
  end

  def destroy
    @subscription = Subscription.find(params[:subscription_id])
    if @subscription.child_no_valids.length <= 1
      redirect_to info_subscription_path(@subscription)
    else
      @child_no_valid = ChildNoValid.find(params[:id])
      @child_no_valid.destroy
      redirect_to subscription_show_path(@subscription)
    end
  end

  def next_step
    if params[:new_child]
      redirect_to new_subscription_child_no_valid_path(@subscription,@child)
    else
      redirect_to new_subscription_parent_no_valid_path(@subscription,@parent)
    end
  end

  private

  def defineBirthDate
    day = set_day
    month = set_month
    year = params[:child_no_valid]["birth_date(1i)"]
    birth_date = day + "-" + month + "-" + year
    birth_date
  end

  def set_day
    if params[:child_no_valid]["birth_date(3i)"].length == 1
      day = "0" + params[:child_no_valid]["birth_date(3i)"]
    else
      day = params[:child_no_valid]["birth_date(3i)"]
    end
    day
  end

  def set_month
    if params[:child_no_valid]["birth_date(2i)"].length == 1
      month = "0" + params[:child_no_valid]["birth_date(2i)"]
    else
      month = params[:child_no_valid]["birth_date(2i)"]
    end
    month
  end

  def child_no_valids_params
    params.require(:child_no_valid).permit(:first_name,
                                           :last_name,
                                           :gender,
                                           "birth_date(3i)",
                                           "birth_date(2i)",
                                           "birth_date(1i)",
                                           :nationality,
                                           :first_lang,
                                           :snd_lang,
                                           :montessori_before,
                                           :montessori_name,
                                           :workshop,
                                           :nursery,
                                           :comment,
                                           :subscription_id,
                                           :child_atmosphere,
                                           :start_date)
  end

end
