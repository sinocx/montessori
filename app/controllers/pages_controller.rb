class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:maria_montessori ,:home, :programmes,:pedagogie_montessori,  :informations, :tarifs, :contact, :inscription, :subscription_success]

  def home
  end
end
