require 'rails_helper'

describe Article do

  # логическая разбивка теста
  describe 'validations' do
    it {should validate_presence_of :title}
    it {should validate_presence_of :text}
    it {should validate_length_of :title}
    it {should validate_length_of :text}
  end

  describe 'associations' do
    it {should have_many :comments}
  end

  describe "#subject" do
    it "returns the article title" do     

      article = create(:article, title: 'It\'s title of article')

      expect(article.subject).to eq 'It\'s title of article'

    end
  end

  describe "#last_comment" do
    it 'return the last comment' do
      #создаем статью с комментариями
      article = create(:article_with_comments) 
      expect(article.last_comment.body).to eq 'comment body 3'
    end
  end
end