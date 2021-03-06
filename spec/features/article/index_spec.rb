require 'rails_helper'

RSpec.describe 'user sees all articles' do
  before do
    @article1 = Article.create!(title: "Title 1", body: "Body 1")
    @article2 = Article.create!(title: "Title 2", body: "Body 2")

    visit '/articles'
  end

  describe 'they visit /articles' do
    it 'displays all articles' do
      expect(page).to have_content(@article1.title)
      expect(page).to have_content(@article2.title)
    end
  end
end