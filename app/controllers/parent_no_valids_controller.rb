class ParentNoValidsController < ApplicationController
  def new
    @parent = ParentNoValid.new()
    @subscription = params[:subscription_id]
  end

  def create
    @parent = ParentNoValid.new(parent_no_valids_params)
    @subscription = params[:subscription_id]
    @parent.subscription_id = params[:subscription_id]
    if @parent.save
      role_check?
    else
      render :new
    end
  end

  def role_check?
    if @parent.role == "Tuteur"
      redirect_to root_path
    else
      if no_more_parent?
        redirect_to root_path
      else
        redirect_to new_subscription_parent_no_valid_path(@subscription,@parent)
      end
    end
  end

  def no_more_parent?
    i = 0
    @parent_no_valid = ParentNoValid.where(subscription_id: @subscription)
    @parent_no_valid.each do |parent|
      (i += 1) if parent.subscription_id == params[:subscription_id].to_i
    end
    return true if i >= 2
  end













  private
  def parent_no_valids_params
    params.require(:parent_no_valid).permit(:first_name,
                                            :last_name,
                                            :lang,
                                            :situation,
                                            :job,
                                            :fiscal,
                                            :address,
                                            :zip_code,
                                            :city,
                                            :email,
                                            :phone,
                                            :mobile)

  end
end
