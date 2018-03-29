class ChildNoValid < ApplicationRecord
  belongs_to :subscription

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :gender, presence: true, inclusion: %w(Masculin Féminin)
  validates :birth_date, presence: true
  validates :nationality, presence: true
  validates :first_lang, presence: true
  validates :snd_lang, presence: true
  validates :montessori_before, presence: true
  validates :workshop, presence: true
  validates :nursery, presence: true
  validates :comment, presence: true


end
