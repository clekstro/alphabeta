Given(/^I am a guest user$/) do
end

Given(/^I visit the landing page$/) do
  visit '/'
end

When(/^I enter my email$/) do
  fill_in "signup_email", with: "johndoe@example.com"
end

When(/^I enter an existing email$/) do
  Alphabeta::Signup.create({email:"johndoe@example.com"})
  fill_in "signup_email", with: "johndoe@example.com"
end

Then(/^I should receive an email$/) do
end

Then(/^I should see a confirmation that it was sent$/) do
  page.should have_content "Thanks for signing up!"
end

Then(/^I submit the form$/) do
  find_button("Sign up").click
end

Then(/^I should see an error message$/) do
  page.should have_content "Email has already been taken"
end
