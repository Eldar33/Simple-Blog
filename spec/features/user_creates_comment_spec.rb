require 'rails_helper'
require 'support/session_helper'

feature 'Comment creation' do

  before(:each) do
    sign_up
    @article = create_article
  end 

  scenario 'allows user add comment' do
    visit article_path(@article.id)
    expect(page).to have_button 'Create Comment'
    fill_in :comment_body, with: 'Test comment'
    click_button 'Create Comment'
    expect(page).to have_content 'Test comment'
  end
  
end

