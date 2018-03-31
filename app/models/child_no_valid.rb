class ChildNoValid < ApplicationRecord
  belongs_to :subscription

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :gender, presence: true, inclusion: %w(Masculin Féminin)
  validates :birth_date, presence: true, format: { with: /\d{2}\/\d{2}\/\d{4}/ }
  validates :nationality, presence: true
  validates :first_lang, presence: true
  validates :snd_lang, presence: true
  validates :montessori_before, presence: true, inclusion: { in:[ true, false ]}
  validates :montessori_name, presence: true, if: :montessori_before?
  validates :workshop, presence: true, inclusion: { in:[ true, false ]}
  validates :nursery, presence: true, inclusion: { in:[ true, false ]}
  validates :comment, presence: true

  def montessori_before?
    montessori_before
  end
end
