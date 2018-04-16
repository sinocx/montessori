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

  NUMBER_OF_DAYS_IN_YEAR = 365.25

  def montessori_before?
    montessori_before
  end

  def age
    ((Date.today - self.birth_date) / NUMBER_OF_DAYS_IN_YEAR).to_i
  end

  def sex
    self.gender == "Feminin" ? "Fille" : "Garçon"
  end

  def atmosphere
    case self.child_atmosphere
    when 0
      child_class = "Communauté Enfantine"
    when 1
      child_class = "Maison des Enfants"
    when 2
      child_class = "Classe Élémentaire"
    else
      child_class = "Erreur !"
    end
    child_class
  end

  def atmosphere_price
    self.child_atmosphere == 0 ? price = "800€" : price = "740€"
    "Un chèque de #{price} pour #{self.atmosphere}"
  end

end
