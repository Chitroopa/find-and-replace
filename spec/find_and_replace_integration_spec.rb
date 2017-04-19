require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('find_and_replace', {:type => :feature}) do
  it('find and replace user inputted string') do
    visit('/')
    fill_in('sentence', :with => 'any sentence to find and replace')
    fill_in('find', :with => 'sentence')
    fill_in('replace', :with => 'replaced string')
    click_button('Replace')
    expect(page).to have_content('any replaced string to find and replace')
  end
end
