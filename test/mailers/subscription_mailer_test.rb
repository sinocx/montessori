require 'test_helper'

class SubscriptionMailerTest < ActionMailer::TestCase
  test "etape2" do
    mail = SubscriptionMailer.etape2
    assert_equal "Etape2", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "etape3" do
    mail = SubscriptionMailer.etape3
    assert_equal "Etape3", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
