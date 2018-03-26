class MoreInfo < ApplicationRecord
  belongs_to :subscription


  validates :know_the_school, presence: true
  validates :start_date, presence: true
  validates :reason_why, presence: true
  validates :child_atmosphere, presence: true
end
