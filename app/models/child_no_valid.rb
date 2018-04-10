class ChildNoValid < ApplicationRecord
  belongs_to :subscription

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :gender, presence: true, inclusion: { in: [ "Masculin", "Féminin" ] }
  validates :birth_date, presence: true
  # , format: { with: /\d{2}\-\d{2}\-\d{4}/ }
  validates :nationality, presence: true
  validates :first_lang, presence: true
  # validates :snd_lang
  validates :montessori_before, inclusion: { in: [ true, false ] }
  validates :montessori_name, presence: true, if: :montessori_before?
  # validates :comment

  def montessori_before?
    montessori_before
  end
end
