require_relative './test_helper'

class ApplicationTest < AppTest
  def test_app_loads
    get '/'
    assert_equal 302, last_response.status
    follow_redirect!
    assert_equal 200, last_response.status
    assert_match /\/users$/, request_url
  end
end
