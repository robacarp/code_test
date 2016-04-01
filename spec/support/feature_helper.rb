require 'capybara'
require 'capybara/dsl'

module FeatureHelper
  include Capybara::DSL

  def self.included(base)
    base.class_eval do
      before(:all) do
        Capybara.app = app
      end
    end
  end
end
