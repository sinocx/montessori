class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :maria_montessori ,
                                                  :home, :programmes,
                                                  :pedagogie_montessori,
                                                  :informations,
                                                  :tarifs,
                                                  :contact,
                                                  :inscription,
                                                  :subscription_success,
                                                  :inscription_success
                                                ]
  before_action :allow_iframe
  def home
    response.headers['X-Frame-Options'] = 'ALLOWALL'
  end

  def embed
  end

  private

  def allow_iframe
   response.headers['X-Frame-Options'] = 'ALLOWALL'
  end
end
