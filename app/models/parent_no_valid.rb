class ParentNoValid < ApplicationRecord
    belongs_to :subscription

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :lang, presence: true
  validates :situation, presence: true
  validates :job, presence: true
  validates :fiscal, presence: true
  validates :address, presence: true
  validates :zip_code, presence: true
  validates :city, presence: true
  validates :email, format: { with: /\A[^@\s]+@[^@\s]+\z/ }, presence: true, uniqueness: true
  validates :phone, presence: true
  validates :mobile, format: { with: /0[6-7](\d{2}){4}/ }, presence: { message: 'Mobile uniquement' }, uniqueness: true
end
