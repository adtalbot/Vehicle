require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the path for the vehicle website', {:type => :feature}) do
  it('displays the list of vehicles') do
    visit('/')
    click_button('Go')
    expect(page).to have_content('Toyota Corolla')
  end
end