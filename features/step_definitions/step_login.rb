Given(/^I navigate to Fullhouse$/) do
  Admin::Login.new.login_nav
  # step "I navigate to Knight Rider"
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

When(/^I login into eTap for CP1$/) do
  step "I login into eTap with values '#{Watirmark::Configuration.instance.unameCP1}', '#{Watirmark::Configuration.instance.password}'"
end

When(/^I login into eTap for CP2$/) do
  step "I login into eTap with values '#{Watirmark::Configuration.instance.unameCP2}', '#{Watirmark::Configuration.instance.password}'"
end

When(/^I login into eTap for CP3$/) do
  step "I login into eTap with values '#{Watirmark::Configuration.instance.unameCP3}', '#{Watirmark::Configuration.instance.password}'"
end

When(/^I login into eTap for CP4$/) do
  step "I login into eTap with values '#{Watirmark::Configuration.instance.unameCP4}', '#{Watirmark::Configuration.instance.password}'"
end

When(/^I login into eTap for CP5$/) do
  step "I login into eTap with values '#{Watirmark::Configuration.instance.unameCP5}', '#{Watirmark::Configuration.instance.password}'"
end

When(/^I login into eTap for CP6$/) do
  step "I login into eTap with values '#{Watirmark::Configuration.instance.unameCP6}', '#{Watirmark::Configuration.instance.password}'"
end

When(/^I login into eTap for CP7$/) do
  step "I login into eTap with values '#{Watirmark::Configuration.instance.unameCP7}', '#{Watirmark::Configuration.instance.password}'"
end

When(/^I login into eTap for CP8$/) do
  step "I login into eTap with values '#{Watirmark::Configuration.instance.unameCP8}', '#{Watirmark::Configuration.instance.password}'"
end

When(/^I login into eTap for CP9$/) do
  step "I login into eTap with values '#{Watirmark::Configuration.instance.unameCP9}', '#{Watirmark::Configuration.instance.password}'"
end

When(/^I login into eTap for CP10$/) do
  step "I login into eTap with values '#{Watirmark::Configuration.instance.unameCP10}', '#{Watirmark::Configuration.instance.password}'"
end

When(/^I login into eTap for CP11$/) do
  step "I login into eTap with values '#{Watirmark::Configuration.instance.unameCP11}', '#{Watirmark::Configuration.instance.password}'"
end

When(/^I login into eTap for CP12$/) do
  step "I login into eTap with values '#{Watirmark::Configuration.instance.unameCP12}', '#{Watirmark::Configuration.instance.password}'"
end

When(/^I login into eTap for bugs$/) do
  step "I login into eTap with values '#{Watirmark::Configuration.instance.unameBugs}', '#{Watirmark::Configuration.instance.password}'"
end

When(/^I login into eTap for deeper regression$/) do
  step "I login into eTap with values '#{Watirmark::Configuration.instance.unameRegression}', '#{Watirmark::Configuration.instance.password}'"
end

When(/^I login into eTap with values$/) do |login_table|
  step "I login into eTap with values '#{login_table.hashes[0]['username']}', '#{login_table.hashes[0]['password']}'"
end

When(/^I login into eTap with values '([^']*)', '([^']*)'$/) do |custom_user, custom_password|
  loginCheck = Admin::Login.new
  # if not loginCheck.logged_out?
  #   sleep 1
  #   landing = Admin::Landing.new
  #   landing.log_out
  #   sleep 1
  # end
  if loginCheck.logged_out?
    login =  Admin::Login.new(:username => custom_user, :password => custom_password)
    login.create
    login.log_in
  end

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
  landing.handle_alert

  step "I navigate to eTap Mobile"

  if (user_name == "I")
    # step "I login into eTap"
    step "I login into eTap for bugs"
  else
    step "I login into eTap with values '#{user_name}', '#{Watirmark::Configuration.instance.password}'"
  end
end

When(/^login ([^']*), ([^']*) logs into Mobile eTap$/) do |user_name, password|
  landing = Admin::Landing.new
  landing.handle_alert

  step "I navigate to eTap Mobile"

  if (user_name == "I")
    step "I login into eTap"

  else
    step "I login into eTap with values '#{user_name}', '#{password}'"
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
  login = Admin::Login.new

  if not login.logged_out?
    landing.log_out
  end
end

When(/^I log out of eTap Mobile$/) do
  page = Mobile::Login.new
  page.click_logout_button
  sleep 5
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

  any_selected = 0

  if page.is_username_error_present?
    expect(page.username_error == message).to eq(true)
    any_selected = 1
  end

  if page.is_badPasswordAttempt_error_present?
    expect(page.badPasswordAttempt_error == message).to eq(true)
    any_selected = 1
  end

  if page.is_password_error_present?
    expect(page.password_error == message).to eq(true)
    any_selected = 1
  end

  if force_dialog.lightbox_is_present?
    expect(force_dialog.get_duplicate_login_message == message).to eq(true)
    any_selected = 1
  end

  expect(any_selected > 0).to eq(true)
end

Then(/^I see the error '([^']*)' for login '([^']*)'\/'([^']*)'$/) do |message, user_name, password|
  step %Q[I login into eTap with values '#{user_name}', '#{password}']
  step %Q[I login into eTap a second time with values '#{user_name}', '#{password}']
  step %Q[I should see: '#{message}']
end

Then(/^I submit the values$/) do |login_table|
  force_dialog = Admin::Force.new
  force_dialog.username = login_table.hashes[0]['username']
  force_dialog.password = login_table.hashes[0]['password']
  force_dialog.log_in
end
