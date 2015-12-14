When(/^I click on '([^']*)' in the communications menu/) do |value|
  constcontact = Communications::Constcontact.new
  constcontact.communications_link_click(value)
end

And(/^I set the CC User Name to '([^']*)'/) do |value|
  constcontact = Communications::Constcontact.new(:cc_user_name => value)
  constcontact.create
end

And(/^I set the CC Password to '([^']*)'/) do |value|
  constcontact = Communications::Constcontact.new(:cc_password => value)
  constcontact.create
end

And(/^I click Save on the Constant Contact Preferences page/) do
  constcontact = Communications::Constcontact.new
  constcontact.cc_save_click
end

Then(/^I should be on the '([^']*)' page/) do |value|
  constcontact = Communications::Constcontact.new
  expect(constcontact.page_title_header? value).to eq true
end

Then(/^I see the warning message: '([^']*)'/) do |value|
  constcontact = Communications::Constcontact.new
  expect(constcontact.warning_message_header? value).to eq true
end