require 'test_helper'

class NotifierTest < ActionMailer::TestCase
  test "order_received" do
    mail = Notifier.order_received(orders(:one))
	assert_equal "Pragmatic Store Order Confirmation" , mail.subject
	assert_equal ["dave@example.org" ], mail.to
	assert_equal ["depot@example.com" ], mail.from
	assert_match /1 x Programming Ruby 1.9/, mail.body.encoded
  end
end
