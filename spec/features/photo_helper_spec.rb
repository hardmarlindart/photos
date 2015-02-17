require 'spec_helper'

feature 'Creating Elemento' do
  scenario "can create a elemento" do
    visit '/'
    click_link 'New Elemento'
    fill_in 'Alcunha', with: 'sapo'
    click_button 'Create Elemento'
    expect(page).to have_content('Novo Elemento inserido.')
   end
end


