class ChildNoValid < ApplicationRecord
  belongs_to :subscription
  has_one :second_form, dependent: :destroy

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :gender, presence: true, inclusion: { in: [ "Masculin", "Féminin" ] }
  validates :birth_date, presence: true
  # , format: { with: /\d{2}\-\d{2}\-\d{4}/ }
  validates :nationality, presence: true
  validates :first_lang, presence: true
  validates :child_atmosphere, presence: true, inclusion: { in: [ 0, 1 ] }
  validates :montessori_before, inclusion: { in: [ true, false ] }
  validates :montessori_name, presence: true, if: :montessori_before?
  # validates :comment

  def montessori_before?
    montessori_before
  end

  def age
    birth_date = self.birth_date
    today = Date.today
    age = ((today - birth_date) / 365.25).to_i
    age
  end
end
