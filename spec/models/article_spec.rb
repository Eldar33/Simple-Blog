require 'rails_helper'

describe Article do

  # логическая разбивка теста
  describe 'validations' do
    it {should validate_presence_of :title}
    it {should validate_presence_of :text}
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
end