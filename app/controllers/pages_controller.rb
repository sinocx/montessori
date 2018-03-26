class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :programmes, :informations, :tarifs, :contact]

  def home
  end
end
