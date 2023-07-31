require "rails_helper"

feature "Contact Creation" do
  scenario "allows acess to contacts page" do
    visit new_contacts_path
    expect(page).to have_content I18n.t "contacts.contact_us"
  end
  scenario "allows a guest to create contact" do
    visit new_contacts_path
    fill_in :contact_email, with: "example@mail.com"
    fill_in :contact_message, with: "Text"
    click_button "Submit"
    expect(page).to have_content "Thank you! Your message was sent."
  end
end
