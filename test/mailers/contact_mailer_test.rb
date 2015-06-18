require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  test "email_contact" do
    mail = ContactMailer.email_contact
    assert_equal "Email contact", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
