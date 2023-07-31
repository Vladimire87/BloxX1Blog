require "rails_helper"

feature "Article Creation" do
  before(:all) do
    sign_up
  end
  scenario "allows user to visit new artcile page" do
    visit new_article_path
    expect(page).to have_content "Create New Article"
  end
end
