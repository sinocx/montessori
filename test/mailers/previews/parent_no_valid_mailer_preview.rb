# Preview all emails at http://localhost:3000/rails/mailers/parent_no_valid_mailer
class ParentNoValidMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/parent_no_valid_mailer/welcome
  def welcome
    @parent_no_valid = ParentNoValid.new(email: "adamsarfat@hotmail.fr")
    ParentNoValidMailer.welcome(@parent_no_valid)
  end

end
