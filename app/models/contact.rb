class Contact < ApplicationRecord
  after_create :contact_mailer
  validates :full_name_parent, presence: true
  validates :phone, presence: true
  validates :email, presence: true
  validates :subject, presence: true,
                      inclusion: {
                        in: [
                          "Demande d'informations",
                          "Inscription", "Restauration",
                          "Garderie",
                          "Atelier du mercredi",
                          "Autre"
                        ],
                        message: "%{value} n'est pas un objet valide"
                      }
  validates :message, presence: true, length: {minimum: 15}

  def contact_mailer
    ContactMailer.send_contact(self).deliver_now
  end
end
