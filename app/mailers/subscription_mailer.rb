class SubscriptionMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.subscription_mailer.etape2.subject
  #
  def etape_1_2(parent_no_valid)
    if parent_no_valid.nil?
    else
      @greeting = "Bonjour"
      @parent_no_valid = parent_no_valid
      mail to: @parent_no_valid.email, subject: "Validation de la demande d'inscription"
    end
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.subscription_mailer.etape3.subject
  #
  def etape_2_3(parent_no_valid)
    if parent_no_valid.nil?
    else
      @greeting = "Hi"
      @parent_no_valid = parent_no_valid
      mail to: @parent_no_valid.email, subject: "Validation de la demande d'inscription"
    end
  end

  def etape_3
    if parent_no_valid.nil?
    else
      @greeting = "Hi"
      @parent_no_valid = parent_no_valid
      mail to: @parent_no_valid.email, subject: "Validation de la demande d'inscription"
    end
  end
end
