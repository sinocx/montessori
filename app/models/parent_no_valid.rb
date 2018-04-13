class ParentNoValid < ApplicationRecord
  belongs_to :subscription

  validates :role, presence: true, inclusion: { in: [ "Père", "Mère", "Tuteur" ] }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :lang, presence: true
  validates :situation, presence: true, inclusion: { in: [ "Marié(e)", "Pacsé(e)", "Séparé(e)", "Divorcé(e)", "Veuf/Veuve", "Concubinage", "Célibataire" ] }
  validates :job, presence: true
  validates :fiscal, presence: true, numericality: true
  validates :address, presence: true
  validates :zip_code, presence: true, format: { with: /\A\d{5}\z/ }
  validates :city, presence: true
  validates :email, format: { with: /\A[^@\s]+@[^@\s]+\z/ }, presence: true, uniqueness: true
  # validates :phone, presence: true
  validates :phone,
            presence: true,
            format: { with: /0[1-5|9](\d{2}){4}/ },
            presence: { message: 'Téléphone fixe uniquement' },
            unless: ->(parent_no_valid){parent_no_valid.mobile.present?}
  validates :mobile,
            presence: true,
            format: { with: /0[6-7](\d{2}){4}/ },
            presence: { message: 'Mobile uniquement' },
            uniqueness: true,
            unless: ->(parent_no_valid){parent_no_valid.phone.present?}
  # validates :mobile, format: { with: /0[6-7](\d{2}){4}/ }, presence: { message: 'Mobile uniquement' }, uniqueness: true
end
