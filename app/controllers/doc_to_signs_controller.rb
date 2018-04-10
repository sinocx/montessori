class DocToSignsController < ApplicationController
  def index
    @subscription = Subscription.find(params[:subscription_id])
    @parent_no_valids = ParentNoValid.where(subscription: @subscription)
    @child_no_valid = ChildNoValid.find(params[:child_no_valid_id])
  end
  def sortie
  @subscription = Subscription.find(params[:subscription_id])
  respond_to do |format|
      format.pdf do
        pdf = Prawn::Document.new
        pdf.text 'Hello World'
        send_data pdf.render,
          filename: "authorisation de sortie pour ${}",
          type: 'application/pdf',
          disposition: 'inline'
      end
    end
  end
end

