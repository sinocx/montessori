class Contact < ApplicationRecord
  validates :full_name_parent, presence: true
  validates :phone, presence: true
  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/ }
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
end
