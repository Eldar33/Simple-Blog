require 'rails_helper'
require 'support/session_helper'

feature 'Article creation' do

  scenario 'allows user to create article' do    
    sign_up
    visit new_article_path
    expect(page).to have_content 'New article'
  end

end