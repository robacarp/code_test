require_relative '../test_helper'

class WebAcceptanceTest < AppAcceptanceTest
  def test_app_loads
    visit '/'

    assert page.has_content?("Welcome to the Web!")
    assert page.has_content?("There are 0 users in our system")
    assert page.has_link?("Register for an Account")
  end
end
