require 'rails_helper'
require 'support/session_helper'

feature 'Article editing' do

  before(:each) do
    sign_up
    @article = create_article
  end

  scenario 'allows user to edit article' do

    visit edit_article_path(@article.id)

    expect(page).to have_content 'Edit article'

    fill_in :article_title, with: 'Edit title'
    fill_in :article_text, with: 'Edit text'

    click_button 'Save Article'

    expect(page).to have_content 'Edit title'
    expect(page).to have_content 'Edit text'

  end
  
end