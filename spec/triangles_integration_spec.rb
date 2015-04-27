require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('Returns results page given 3 inputs', {:type => :feature}) do
  it('Returns a results page for given 3 inputs') do
    visit('/')
    fill_in('side1_length', :with => "3")
    fill_in('side2_length', :with => "3")
    fill_in('side3_length', :with => "3")
    click_button('Send')
    expect(page).to have_content("equilateral")
  end
end
