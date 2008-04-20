require 'test/unit'
require File.dirname(__FILE__) + '/../test_helper'

class ContactMessageTest < Test::Unit::TestCase
  def test_validation
    message = ContactMessage.new
    assert_equal false, message.valid?

    message.author = "James Crisp"
    assert_equal false, message.valid?

    message.author_email = "james@crispdesign.net"
    assert_equal false, message.valid?

    message.subject = "Hi!"
    assert_equal false, message.valid?

    message.body = "Well, hello!"
    assert_equal true, message.valid?

    message.author_phone = "1234"
    assert_equal true, message.valid?
  end
end
