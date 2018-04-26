class ContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.send_contact.subject
  #
  def send_contact(contact)
    @contact = contact
    @greeting = "Hi"

    mail to: "contact@lespetitesgraines-montessori.fr", subject: "#{@contact.subject}", from: "contact@lespetitesgraines-montessori.fr"
  end
end
