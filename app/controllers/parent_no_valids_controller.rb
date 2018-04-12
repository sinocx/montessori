class ParentNoValidsController < ApplicationController
  skip_before_action :authenticate_user!
  def new
    @parent = ParentNoValid.new()
    @subscription = params[:subscription_id]
  end

  def create
    @parent = ParentNoValid.new(parent_no_valids_params)
    @subscription = params[:subscription_id]
    @parent.subscription_id = params[:subscription_id]
    if @parent.save
      next_step
    else
      render :new
    end
  end

  def edit
    @subscription = params[:subscription_id]
    @parent_no_valid = ParentNoValid.find(params[:id])
  end
  def update
    @subscription = params[:subscription_id]
    @parent_no_valid = ParentNoValid.find(params[:id])
    if @parent_no_valid.update(parent_no_valids_params)
      respond_to do |format|
        format.js
        format.html { render 'parent_no_valids/update'}
      end
    end
  end

  def next_step
    if params[:new_parent]
      redirect_to new_subscription_parent_no_valid_path(@subscription, @parent)
    else
      redirect_to new_subscription_more_info_path(@subscription, @more_info)
    end
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
                                            :mobile,
                                            :role)

  end
end
