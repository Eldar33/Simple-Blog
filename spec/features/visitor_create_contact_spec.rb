require 'rails_helper'

feature 'Contact Cretion' do
  scenario 'allows acees to contacts page' do
    # visit '/contacts'
    visit contacts_path
    expect(page).to have_content I18n.t('contacts.contact_us')
  end
end