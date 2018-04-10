class MoreInfo < ApplicationRecord
  belongs_to :subscription
  after_create :send_welcome_email

  # validates :know_the_school, presence: true
  # validates :reason_why, presence: true

  def send_welcome_email
    subscription = self.subscription
    parent_no_valids = ParentNoValid.where(subscription: subscription)
    parent_no_valids.each do |parent_no_valid|
      ParentNoValidMailer.welcome(parent_no_valid).deliver_now
   end
  end
end
