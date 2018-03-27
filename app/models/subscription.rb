class Subscription < ApplicationRecord
  enum status: ["Etape 0", "Etape 1", "Etape 2", "Etape 3"]
  has_many :parent_no_valids,  dependent: :destroy
  has_many :child_no_valids,  dependent: :destroy
  has_many :more_infos,  dependent: :destroy
end

