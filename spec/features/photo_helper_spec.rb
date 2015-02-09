require 'spec_helper'

feature 'Creating Pessoas' do
  scenario "can create a pessoa" do
    visit '/'
    click_link 'New Pessoa'
    fill_in 'Name', with: 'Mardem'
    click_button 'Create Pessoa'
    expect(page).to have_content('Project has been created.')
   end
end

