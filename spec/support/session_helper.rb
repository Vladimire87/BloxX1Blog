def sign_up
  visit new_user_registration_path

  fill_in :floatingUsername, with: "userTester"
  fill_in :floatingEmail, with: "example@mail.com"
  fill_in :floatingPassword, with: "12345678"
  fill_in :floatingPasswordConfirmation, with: "12345678"

  click_button "Sign up"
end
