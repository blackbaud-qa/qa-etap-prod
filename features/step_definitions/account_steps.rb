When(/^I click on Home from the Role Icon drop down$/) do
  search = Account::Search.new
  search.role_icon_click
  search.role_menu_home_click

end

When(/^I click on Personas from the Role Icon drop down$/) do
  search = Account::Search.new
  search.role_icon_click
  search.role_menu_personas_click
end

When(/^I click on Relationships from the Role Icon drop down$/) do
  search = Account::Search.new
  search.role_icon_click
  search.role_menu_relationships_click
end

When(/^I click on Journal from the Role Icon drop down$/) do
  search = Account::Search.new
  search.role_icon_click
  search.role_menu_journal_click
end

When(/^I click on Other from the Role Icon drop down$/) do
  search = Account::Search.new
  search.role_icon_click
  search.role_menu_other_click
end

When(/^I click on Defined Fields from the Role Icon drop down$/) do
  search = Account::Search.new
  search.role_icon_click
  search.role_menu_defined_fields_click
end


Then (/^I should be taken to '([^']*)' Personas page$/) do |name|
  account = Account::Profile.new
  expect(account.constit_name_exists? name).to eq(true)
  expect(account.on_personas_page?).to eq(true)
end

Then (/^I should be taken to '([^']*)' Relationships page$/) do |name|
  account = Account::Profile.new
  expect(account.constit_name_exists? name).to eq(true)
  expect(account.on_relationships_page?).to eq(true)
end

Then (/^I should be taken to '([^']*)' Journal page$/) do |name|
  account = Account::Profile.new
  expect(account.constit_name_exists? name).to eq(true)
  expect(account.on_journal_page?).to eq(true)
end

Then (/^I should be taken to '([^']*)' Other page$/) do |name|
  account = Account::Profile.new
  expect(account.constit_name_exists? name).to eq(true)
  expect(account.on_other_page?).to eq(true)
end

Then (/^I should be taken to '([^']*)' Defined Fields page$/) do |name|
  account = Account::Profile.new
  expect(account.constit_name_exists? name).to eq(true)
  expect(account.on_defined_fields_page?).to eq(true)
end

Then (/^User '([^']*)' does not exist$/) do |user_name|
  landing = Admin::Landing.new
  landing.accounts_click

  search_page = Account::Search.new
  search_page.set_search_field user_name
  search_page.find_click

  if (search_page.account_name_exists? user_name)
    step %Q[I delete user '#{user_name}']
    landing.log_out
  end
end

When (/^I create user '([^']*)'$/) do |user_name|
  step "there exists user '#{user_name}'"
end

When (/^there exists user '([^']*)'$/) do |user_name|
  landing = Admin::Landing.new
  landing.accounts_click

  search_page = Account::Search.new
  search_page.set_search_field user_name
  search_page.find_click

  if (not search_page.account_name_exists? user_name)
    step %Q[I create user '#{user_name}' with password 'tempPassword']
    landing.log_out

    step %Q[I login into eTap with values '#{user_name}', 'tempPassword']
    process_user_account_security 'Password!', 'fakeEmail@blackbaud.com', 'What is your favorite color?', 'blue'

    homepage = Home::Homepage.new
    if homepage.is_present?
      homepage.click_take_me_to_etap
    end
  end
end

def process_user_account_security(password, email_address, security_question, security_answer)
  user_account_security = Admin::UserAccountSecurity.new
  user_account_security.enter_current_password('tempPassword')
  user_account_security.enter_new_password(password)
  user_account_security.enter_confirm_password(password)

  user_account_security.enter_primary_email(email_address)

  user_account_security.select_security_question(security_question)
  user_account_security.enter_security_answer(security_answer)

  user_account_security.select_save_button
end

When (/^I create user '([^']*)' with password '([^']*)'$/) do |user_name, password|
 # account.create_person 'testUser', 'testUser'

  desired_next_page = 'Go to Personas'

  account = Account::AddAccount.new

  step %Q[I am logged into eTap]
  step %Q[I click Accounts]
  step %Q[I click on Add Account on the find account screen]

  if (account.is_split_names?)
    step %Q[I set First Name to '#{user_name}' on the classic add account page]
    step %Q[I set Last Name to '#{user_name}' on the classic add account page]
  else
    step %Q[I set Name to '#{user_name}' on the classic add account page]
    step %Q[I set Sort Name to '#{user_name}' on the classic add account page]
  end


  account.set_role_checkbox('user',true)
  account.set_login_id user_name
  account.set_user_password password #user_name
  account.set_user_password_confirm password #user_name
  step %Q[I click Save And '#{desired_next_page}'] # eg: 'Go to Personas'

  # step %Q[I am logged into eTap]
  # step %Q[I click Accounts]
  # step %Q[I click on Add Account on the find account screen]
  # step %Q[I set Name to '#{account_name}' on the classic add account page]
  # step %Q[I set Sort Name to '#{sort_name}' on the classic add account page]
  # step %Q[I set Address Lines to '#{address}' on the classic add account page]
  # step %Q[I set City to '#{city}' on the classic add account page]
  # step %Q[I set State to '#{state}' on the classic add account page]
  # step %Q[I set Postal Code to '#{postal_code}' on the classic add account page]
  # step %Q[I set County to '#{county}' on the classic add account page]
  # step %Q[I set Voice to '#{voice}' on the classic add account page]
  # step %Q[I set Email to '#{email}' on the classic add account page]
  # step %Q[I set Web Page to '#{web_page}' on the classic add account page]
  # step %Q[I set Note to '#{note}' on the classic add account page]
  # step %Q[I set Short Salutation to '#{short_sal}' on the classic add account page]
  # step %Q[I set Long Salutation to '#{long_sal}' on the classic add account page]
  # step %Q[I set the UDF '#{udf_name}' to '#{udf_value}' on the classic add account page]
  # step %Q[I click Save And '#{desired_next_page}'] # eg: 'Go to Personas'
end