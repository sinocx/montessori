  class ParentNoValidMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.parent_no_valid_mailer.welcome.subject
  #
  def welcome(parent_no_valid)
    @parent_no_valid = parent_no_valid
    @greeting = "Bonjour"
      mail to: @parent_no_valid.email , subject: "Bienvenue !"
  end
end
