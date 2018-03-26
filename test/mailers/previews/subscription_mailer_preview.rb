# Preview all emails at http://localhost:3000/rails/mailers/subscription_mailer
class SubscriptionMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/subscription_mailer/etape2
  def etape2
    SubscriptionMailer.etape2
  end

  # Preview this email at http://localhost:3000/rails/mailers/subscription_mailer/etape3
  def etape3
    SubscriptionMailer.etape3
  end

end
