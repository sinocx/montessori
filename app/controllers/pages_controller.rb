class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :ecole,
                                                  :programmes,
                                                  :pedagogie,
                                                  :pedagogie_montessori,
                                                  :maria_montessori,
                                                  :ambiances,
                                                  :ambiance_montessori,
                                                  :bibliographie,
                                                  :informations,
                                                  :prices,
                                                  :contact,
                                                  :inscription,
                                                  :subscription_success,
                                                  :inscription_success
                                                ]

end
