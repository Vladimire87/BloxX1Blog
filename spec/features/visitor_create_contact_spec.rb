require "rails_helper"

feature "Contact Creation" do
  scenario "allows acess to contacts page" do
    visit new_contacts_path
    expect(page).to have_content "Cheers, Vladimir Egorov"
  end
end
