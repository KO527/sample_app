require 'test_helper'

class UserTest < ActiveSupport::TestCase

	def setup
	    @user = User.new(first_name: "Vic", last_name: "Ramos", email: "VicRamos@example.com", role: 'buyer')
	end
	test "should be valid" do 
	    assert @user.valid?
	end
end

