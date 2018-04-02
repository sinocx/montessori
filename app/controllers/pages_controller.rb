class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [
    :maria_montessori ,
    :home,
    :programmes,
    :pedagogie_montessori,
    :informations,
    :tarifs,
    :contact,
    :inscription,
    :subscription_success,
    :pedagogie,
    :ambiance_montessori,
    :materiel,
    :bibliographie
  ]

  def home
  end
end
