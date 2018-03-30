class Contact < ApplicationRecord
  validates :full_name_parent, presence: true
  validates :phone, presence: true
  validates :email, presence: true
  validates :subject, presence: true, inclusion: { in: ["Inscription", "Restauration", "Garderie", "Atelier du mercredi", "Autre" ],
    message: "%{value} n'est pas un objet valide" }
  validates :message, presence: true, length: {minimum: 15}

end
