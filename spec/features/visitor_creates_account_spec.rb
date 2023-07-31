require "rails_helper"

feature "Account Creation" do
  scenario "allows guest to create account" do
    visit new_user_registration_path
    fill_in :user_username, with: "userTester"
    fill_in :user_email, with: "example@mail.com"
    fill_in :user_password, with: "12345678"
    fill_in :user_password_confirmation, with: "12345678"
    click_button "Sign up"
    expect(page).to have_content I18n.t "devise.registrations.signed_up"
  end
  scenario "allows a guest to create contact" do
  end
end
