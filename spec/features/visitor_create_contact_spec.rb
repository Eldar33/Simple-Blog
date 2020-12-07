require 'rails_helper'

feature 'Contact Cretion' do
  scenario 'allows acees to contacts page' do
    visit '/contacts'
    expect(page).to have_content 'Contact us'
  end
end