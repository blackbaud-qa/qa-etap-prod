Given(/^I click Thank You Letters on the Correspondence Categories page/) do
  letter = Communications::Createtemplate.new()
  letter.thank_you_category_click
end

Given(/^I click New Email or Document Template on the Thank You Letters page/) do
  letter = Communications::Createtemplate.new()
  letter.new_template_click
end