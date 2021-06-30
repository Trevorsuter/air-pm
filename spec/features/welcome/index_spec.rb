require 'rails_helper'

RSpec.describe 'welcome page', type: :feature do
  before :each do
    visit root_path
  end

  it 'displays the name of the website' do

    expect(page).to have_content("AirPM")
  end

  it 'should display the slogan' do
    slogan = "Making Property Management Manageable."

    expect(page).to have_content(slogan)
  end
end