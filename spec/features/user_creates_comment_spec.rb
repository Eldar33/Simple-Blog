require 'rails_helper'

feature 'Comment creation' do

  before(:each) do
    sign_up
    @article_id = create_article
  end 

  scenario 'allows user add comment' do
    visit article_path(@article_id)
    expect(page).to have_button 'Create Comment'
    fill_in :comment_body, with: 'Test comment'
    click_button 'Create Comment'
    expect(page).to have_content 'Test comment'
  end
  
end

def create_article
  article = create(:article, title: 'It\'s title of article')
  return article.id
end