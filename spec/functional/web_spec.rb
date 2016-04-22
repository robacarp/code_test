require 'spec_helper'

describe Web do
  describe "GET /" do
    it "can be loaded" do
      get '/'

      expect(last_response).to be_redirect

      follow_redirect!

      expect(last_response).to be_ok
      expect(request_url).to match(/\/users$/)
    end
  end
end
