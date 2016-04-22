require 'spec_helper'

describe "Our Application", type: :feature do
  it "can be loaded" do
    visit '/'

    expect(page).to have_content("Welcome to the Web!")
    expect(page).to have_content("There are 0 users in our system")
    expect(page).to have_link("Register for an Account")
  end
end
