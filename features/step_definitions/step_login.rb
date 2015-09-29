Given(/^I navigate to Fullhouse$/) do
  Admin::Login.new.login_nav
end

Given(/^I navigate to Knight Rider$/) do
  Admin::Login.new.login_nav_kr
end

Given(/^I navigate to eTap Mobile$/) do
  Admin::Login.new.login_nav_mobile
end

When(/^I login into eTap$/) do
 page =  Admin::Login.new()
 page.create
 page.log_in
end

When(/^I login into Knight Rider/) do
  page =  Admin::Login.new(:username => Watirmark::Configuration.instance.username_kr, :password => Watirmark::Configuration.instance.password_kr)
  page.create
  page.log_in
end

When(/^I login into eTap with values$/) do |login_table|
  step "I login into eTap with values '#{login_table.hashes[0]['username']}', '#{login_table.hashes[0]['password']}'"
end

When(/^I login into eTap with values '([^']*)', '([^']*)'$/) do |custom_user, custom_password|
  page =  Admin::Login.new(:username => custom_user, :password => custom_password)
  page.create
  page.log_in
end

When(/^I login into eTap a second time with values$/) do |login_table|
  step "I login into eTap a second time with values '#{login_table.hashes[0]['username']}', '#{login_table.hashes[0]['password']}'"
end

When(/^I login into eTap a second time with values '([^']*)', '([^']*)'$/) do |custom_user, custom_password|
  step "I navigate to Fullhouse"
  page =  Admin::Login.new(:username => custom_user, :password => custom_password)
  page.create
  page.log_in_without_force
end

When(/^([^']*) (?:is|am) logged into eTap$/) do |user_name|
 landing = Admin::Landing.new

 # for testing only ---landing.test_throw_alert

 landing.handle_alert

 unless landing.logged_in?
   step "I navigate to Fullhouse"

   if (user_name == "I")
     step "I login into eTap"
   else
     step "I login into eTap with values '#{user_name}', '#{user_name}'"
   end
 end
end

When(/^([^']*) (?:is|am) logged into Mobile eTap$/) do |user_name|
  landing = Admin::Landing.new

  # for testing only ---landing.test_throw_alert

  landing.handle_alert

  step "I navigate to eTap Mobile"

  if (user_name == "I")
    step "I login into eTap"
  else
    step "I login into eTap with values '#{user_name}', '#{user_name}'"
  end
end

When(/^([^']*) (?:is|am) logged into Knight Rider$/) do |user_name|
  landing = Admin::Landing.new

  # for testing only ---landing.test_throw_alert

  landing.handle_alert

  # unless landing.logged_in?
    step "I navigate to Knight Rider"

    if (user_name == "I")
      step "I login into Knight Rider"
    else
      step "I login into eTap with values '#{user_name}', '#{user_name}'"
    end
  # end
end

When(/^I log out of eTap$/) do
  landing = Admin::Landing.new
  landing.log_out
end

Then(/^I should be logged in$/) do
  landing = Admin::Landing.new
  expect(landing.logged_in?).to eq(true)
end


Then(/^I should be logged out of eTap$/) do
  page = Admin::Login.new
  expect(page.logged_out?).to eq(true)
end

Then (/^I should see my Home page$/) do
  landing = Admin::Landing.new
  expect(landing.on_home_page?).to eq(true)
end

Then(/^I should see: '([^']*)' and '([^']*)'$/) do |message_1, message_2|
  message_count = 0

  page = Admin::Login.new
  if page.is_username_error_present?
    if page.username_error == message_1
      message_count += 1
    end
  end

  if page.is_password_error_present?
    if page.password_error == message_2
      message_count += 1
    end
  end

  expect(message_count == 2)
end

Then(/^I should see: '([^']*)'$/) do |message|
  page = Admin::Login.new
  force_dialog = Admin::Force.new

  if page.is_username_error_present?
    expect(page.username_error == message).to eq(true)
  end

  if page.is_password_error_present?
    expect(page.password_error == message).to eq(true)
  end

  if force_dialog.lightbox_is_present?
    expect(force_dialog.get_duplicate_login_message == message).to eq(true)
  end

end

Then(/^I see the error '([^']*)'$/) do |message|
  step "I login into eTap with values 'testUser', 'Password!'"
  step "I login into eTap a second time with values 'testUser', 'Password!'"
  step %Q[I should see: '#{message}']
end

Then(/^I submit the values$/) do |login_table|
  force_dialog = Admin::Force.new
  force_dialog.username = login_table.hashes[0]['username']
  force_dialog.password = login_table.hashes[0]['password']
  force_dialog.log_in
end
