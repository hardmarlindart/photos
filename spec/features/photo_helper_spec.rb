require 'spec_helper'

feature 'Creating Elementos' do
  scenario "can create a elemento" do
    visit '/'
    click_link 'New Elemento'
    fill_in 'Alcunha', with: 'Sapo'
    click_button 'Create Elemento'
     expect(page).to have_content('Elemento Criado.')
  end
end
