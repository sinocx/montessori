class SubscriptionMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.subscription_mailer.etape2.subject
  #
  def etape_1_2(parent_no_valid, subscription, childs)
    @child_no_valids = childs
    @subscription = subscription
    @greeting = "Bonjour"
    @parent_no_valid = parent_no_valid
    mail to: @parent_no_valid.email, subject: "Validation de votre demande de préinscription à l'école Les Petites Graines"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.subscription_mailer.etape3.subject
  #
  def etape_2_3(parent_no_valid, subscription, child_no_valid)
    @child_no_valid = child_no_valid
    @subscription = subscription
    @parent_no_valid = parent_no_valid
    @greeting = "Hi"
    attachments['test1.pdf'] = File.read("app/assets/images/test1.pdf")
    mail to: @parent_no_valid.email, subject: "Confirmation de votre demande d'inscription à l'école Les Petites Graines"
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
