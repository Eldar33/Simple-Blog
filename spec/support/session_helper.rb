

def sign_up
  visit new_user_registration_path
  fill_in :user_email, with: 'user@example.com'
  fill_in :user_username, with: 'test_user'
  fill_in :user_password, with: '123456'
  fill_in :user_password_confirmation, with: '123456'
  click_button 'Sign up'
end

def create_article
  article = create(:article, title: 'It\'s title of article')
end