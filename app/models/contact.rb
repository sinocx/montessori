class Contact < ApplicationRecord
  validates :message, presence: true, length: {minimum: 15}
  validates :full_name_parent, presence: true
  validates :child_full_name, presence: true
  validates :phone, presence: true
  validates :email, presence: true
  validates :child_first_lang, presence: true
  validates :child_first_lang, presence: true
  validates :subject, presence: true

end
