require 'rails_helper'
require 'support/session_helper'

feature 'Article creation' do

  before(:each) do
    sign_up
  end

  scenario 'allows user to open new article' do
    visit new_article_path
    expect(page).to have_content 'New article'
  end

  scenario 'allows user to create article' do

    visit new_article_path
    fill_in :article_title, with: "Test article title"
    fill_in :article_text, with: "Test article text"
    click_button 'Save Article'
    expect(page).to have_content 'Test article title'

  end

end