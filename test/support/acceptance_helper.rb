require 'capybara'
require 'capybara/dsl'

module AcceptanceHelper
  include Capybara::DSL

  Capybara.app = Web
end
