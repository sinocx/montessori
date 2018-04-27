class Subscription < ApplicationRecord
  enum status: ["Etape 0", "Etape 1", "Etape 2", "Etape 3"]
  has_many :parent_no_valids,  dependent: :destroy
  has_many :child_no_valids,  dependent: :destroy
  has_one :more_info,  dependent: :destroy
  has_many :second_forms,  through: :child_no_valids
end

