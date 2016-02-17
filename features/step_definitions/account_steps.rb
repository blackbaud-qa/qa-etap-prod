When(/^I click on Home from the Role Icon drop down for '([^']*)'$/) do |account_name|
  search = Account::Search.new
  search.role_icon_click account_name
  search.role_menu_home_click

end

When(/^I click on Personas from the Role Icon drop down for '([^']*)'$/) do |account_name|
  search = Account::Search.new
  search.role_icon_click account_name
  search.role_menu_personas_click
end

When(/^I click on Relationships from the Role Icon drop down for '([^']*)'$/) do |account_name|
  search = Account::Search.new
  search.role_icon_click account_name
  search.role_menu_relationships_click
end

When(/^I click on Journal from the Role Icon drop down for '([^']*)'$/) do |account_name|
  search = Account::Search.new
  search.role_icon_click account_name
  search.role_menu_journal_click
end

When(/^I click on Account Settings from the Role Icon drop down for '([^']*)'$/) do |account_name|
  search = Account::Search.new
  search.role_icon_click account_name
  search.role_menu_other_click
end

When(/^I click on Defined Fields from the Role Icon drop down for '([^']*)'$/) do |account_name|
  search = Account::Search.new
  search.role_icon_click account_name
  search.role_menu_defined_fields_click
end


Then (/^I should be taken to '([^']*)' Personas page$/) do |name|
  sleep 2
  account = Account::Profile.new
  expect(account.constit_name_exists? name).to eq(true)
  expect(account.on_personas_page?).to eq(true)
end

Then (/^I should be taken to '([^']*)' Relationships page$/) do |name|
  sleep 2
  account = Account::Profile.new
  expect(account.constit_name_exists? name).to eq(true)
  expect(account.on_relationships_page?).to eq(true)
end

Then (/^I should be taken to '([^']*)' Journal page$/) do |name|
  sleep 2
  account = Account::Profile.new
  expect(account.constit_name_exists? name).to eq(true)
  expect(account.on_journal_page?).to eq(true)
end

Then (/^I should be taken to '([^']*)' Account Settings page$/) do |name|
  sleep 2
  account = Account::Profile.new
  expect(account.constit_name_exists? name).to eq(true)
  expect(account.on_other_page?).to eq(true)
end

Then (/^I should be taken to '([^']*)' Defined Fields page$/) do |name|
  sleep 2
  account = Account::Profile.new
  expect(account.constit_name_exists? name).to eq(true)
  expect(account.on_defined_fields_page?).to eq(true)
end

Then (/^I should be taken to '([^']*)' New Contact page$/) do |name|
  account = Account::Profile.new
  expect(account.constit_name_exists? name).to eq(true)
  expect(account.on_defined_fields_page?).to eq(true)
end

Then (/^I should be taken to '([^']*)' Quick Gift Entry page$/) do |name|
  landing = Admin::Landing.new
  expect(landing.on_giving_page?).to eq(true)
end

Then (/^User '([^']*)' does not exist$/) do |user_name|
  landing = Admin::Landing.new
  landing.accounts_click

  search_page = Account::Search.new
  search_page.set_search_users_checkbox true
  search_page.set_search_constituents_checkbox false
  search_page.set_search_tributes_checkbox false
  search_page.set_search_teams_checkbox false
  search_page.set_search_field user_name
  search_page.find_click

  if (search_page.new_account_name_exists? user_name)
    step %Q[I delete user '#{user_name}']
    landing.log_out
  end
end

When (/^delete the accounts$/) do
  steps %Q[
      When I click Accounts
      And I click on Find an Account on the accounts menu
      ]
  search = Account::Search.new

  CSV.foreach("C:\\users\\matt.dilts\\Desktop\\test4k.csv") do |row|
    steps %Q[
      And I type '#{row[1]} #{row[2]} #{row[3]}' into the search field
      And I click Exact Match
    ]

    if search.new_account_name_exists? row[1]+' '+row[2]+' '+row[3]
      steps %Q[And I click on '#{row[1]} #{row[2]} #{row[3]}' on the accounts page]
      steps %Q[  And I click on the account settings page on the accounts page]
      steps %Q[And I click Delete Role on the Account Settings page]
      steps %Q[And I click Yes on the Account Settings page]
    end

    sleep 0.3
  end
end

When (/^add the accounts$/) do
  steps %Q[
    When I click Accounts
    And I click on Add Account on the find account screen
  ]

  CSV.foreach("C:\\users\\matt.dilts\\Desktop\\test4kc.csv") do |row|
    steps %Q[When I set Title to '#{row[0]}' on the classic add account page]
    steps %Q[And I set First Name to '#{row[1]}' on the classic add account page]
    steps %Q[And I set Middle Name to '#{row[2]}' on the classic add account page]
    steps %Q[And I set Last Name to '#{row[3]}' on the classic add account page]
    steps %Q[And I set Address Lines to '#{row[4]}' on the classic add account page]
    steps %Q[And I set City to '#{row[5]}' on the classic add account page]
    steps %Q[And I set State to '#{row[6]}' on the classic add account page]
    steps %Q[And I set Postal Code to '#{row[8]}' on the classic add account page]
    steps %Q[And I set Voice to '#{row[10]}' on the classic add account page]
    steps %Q[And I set Email to '#{row[9]}' on the classic add account page]
    steps %Q[And I set Note to '#{row[1]} #{row[3]}' on the classic add account page]
    steps %Q[And I set the UDF 'Account Type' dropdown to 'Individual' on the classic add account page]
    steps %Q[And I set the UDF 'Gender' dropdown to '#{row[12]}' on the classic add account page]
    steps %Q[And I set the UDF 'Date of Birth' to '#{row[11]}' on the classic add account page]
    steps %Q[And I click Save And 'New']
    steps %Q[And I handle the duplicate report if necessary]

    sleep 0.3
  end

end

Then (/^Constituent '([^']*)' does not exist$/) do |user_name|
  landing = Admin::Landing.new
  landing.accounts_click

  search_page = Account::Search.new
  search_page.set_search_users_checkbox false
  search_page.set_search_constituents_checkbox true
  search_page.set_search_tributes_checkbox false
  search_page.set_search_teams_checkbox false
  search_page.set_search_field user_name
  search_page.find_click

  if (search_page.new_account_name_exists? user_name)
    step %Q[I delete user '#{user_name}']
    landing.log_out
  end
end

When (/^I delete user '([^']*)'$/) do |user_name|
  step "I click on '#{user_name}' on the accounts page"
  step "I click on the account settings page on the accounts page"
  step "I click Delete Role on the Account Settings page"
  step "I click Yes on the Account Settings page"
end

When (/^I create user '([^']*)'$/) do |user_name|
  step "there exists user '#{user_name}'"
end

When (/^there exists user '([^']*)'$/) do |user_name|
  landing = Admin::Landing.new
  landing.accounts_click
  landing.accounts_dd_find_account_click

  search_page = Account::Search.new
  search_page.set_search_field user_name
  search_page.find_click

  if (not search_page.new_account_name_exists? user_name)
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
  account.set_role_checkbox('constituent',false)
  account.set_login_id user_name
  account.set_user_password password #user_name
  account.set_user_password_confirm password #user_name
  step %Q[I click Save And '#{desired_next_page}'] # eg: 'Go to Personas'
end

And(/^I click the Move Values link$/) do
  search = Account::Search.new
  search.move_values_link
end

And(/^I click the Business checkbox$/) do
  search = Account::Search.new
  search.move_business_value
end

And(/^I click the Attributes radio button$/) do
  search = Account::Search.new
  search.move_value_to_attributes
end

And(/^I click the Move button$/) do
  search = Account::Search.new
  search.move_button
end

And(/^I click Attributes on the UDF page$/) do
  search = Account::Search.new
  search.attributes_udf
end

And(/^I click the Account Type radio button$/) do
  search = Account::Search.new
  search.move_value_to_account_type
end

And(/^set '([^']*)' rights to admin$/) do |user_name|
  rights = Management::SecurityGroups.new
  rights.user_rights_link_click user_name


  step %Q[I click the 'Admin' security group]
  step %Q[click Save and Edit]
end

And(/^I create new security group '([^']*)'$/) do |group_name|
  rights = Management::SecurityGroups.new
  rights.new_security_group_link_click

  rights.set_security_group_name group_name
  rights.save_button_click
end

And(/^I start a new security group '([^']*)'$/) do |group_name|
  rights = Management::SecurityGroups.new
  rights.new_security_group_link_click

  rights.set_security_group_name group_name
end

And(/^I set the security group query to ([^']*), ([^']*)$/) do |dropdown_name, dropdown_value|
  rights = Management::SecurityGroups.new

  rights.set_query_dropdown dropdown_name, dropdown_value
end

And(/^I set the security group queries to ([^']*), ([^']*), ([^']*), ([^']*)$/) do |account_read_query, account_update_query, journal_entry_read_query, journal_entry_update_query|
  rights = Management::SecurityGroups.new

  rights.set_query_dropdown 'entityRoleReadQuery', account_read_query
  rights.set_query_dropdown 'entityRoleUpdateQuery', account_update_query
  rights.set_query_dropdown 'journalReadQuery', journal_entry_read_query
  rights.set_query_dropdown 'journalUpdateQuery', journal_entry_update_query
end

And(/^I (grant|deny)? all query permissions$/) do |op|
  rights = Management::SecurityGroups.new
  rights.set_grant_deny 'Account Read', op
  rights.set_grant_deny 'Account Update', op
  rights.set_grant_deny 'Journal Read', op
  rights.set_grant_deny 'Journal Update', op
end

And(/^I (grant|deny)? permission ([^']*)$/) do |op, permission_name|
  rights = Management::SecurityGroups.new
  rights.set_grant_deny permission_name, op

      # Call with:
      #    'Account Read'
      #    'Account Update'
      #    'Journal Read'
      #    'Journal Update'
      #  and
      #      'Grant' | 'Deny'
end

And(/^I save a security group$/) do
  rights = Management::SecurityGroups.new
  rights.save_button_click
end

And(/^set '([^']*)' rights to security group '([^']*)'$/) do |user_name, security_group|
  rights = Management::SecurityGroups.new
  rights.user_rights_link_click user_name

  step %Q[I click the '#{security_group}' security group]
  step %Q[click Save and Edit]
end

And(/^I click the '([^']*)' security group$/) do |security_group|
  rights = Account::Rights.new
  rights.rights_group_click security_group
end

Then(/^I should see the Edit User Defined Field Categories page$/) do
  search = Account::Search.new
  expect(search.edit_user_defined_field_categories_page).to eq(true)
end

When (/^I create constituent '([^']*) ([^']*)'$/) do |first_name, last_name|
  step %Q[I create constituent '#{first_name} #{last_name}' with 'Search' desired landing page]
end

When (/^I create constituent '([^']*) ([^']*)' with '([^']*)' desired landing page$/) do |first_name, last_name, landing_page|
  desired_next_page = landing_page

  account = Account::AddAccount.new

  step %Q[I am logged into eTap]
  step %Q[I click Accounts]
  step %Q[I click on Add Account on the find account screen]

  if (account.is_split_names?)
    step %Q[I set First Name to '#{first_name}' on the classic add account page]
    step %Q[I set Last Name to '#{last_name}' on the classic add account page]
  else
    step %Q[I set Name to '#{first_name} #{last_name}' on the classic add account page]
    step %Q[I set Sort Name to '#{last_name}, #{first_name}' on the classic add account page]
  end

  step %Q[I set the UDF 'Account Type' dropdown to 'Individual' in the UDF section on the classic add account page]
  step %Q[click Save and #{desired_next_page}]
end

When (/^there exists constituent '([^']*)'$/) do |constituent_name|
  landing = Admin::Landing.new
  landing.accounts_click
  landing.accounts_dd_find_account_click

  search_page = Account::Search.new
  search_page.set_search_field constituent_name
  search_page.find_click

  if (not search_page.new_account_name_exists? constituent_name)
    step %Q[I create constituent '#{constituent_name}']
  end
end

And (/^I click tab ([^']*)/) do |tab_name|
  profile = Account::Profile.new
  profile.page_click tab_name
end

And(/^I click on Preferences on the My User page$/) do
  org = Management::MyOrg.new()
  org.my_user_prefs_click
end

And (/^I have disabled Duplicate Checking/) do
  myOrg = Management::UserDropdown.new
  myOrg.down_arrow_click
  myOrg.my_preferences_click

  myPrefs = Account::Preferences.new
  myPrefs.set_check_for_duplicates_checkbox false

  desired_next_page = 'Edit'
  step %Q[click Save and #{desired_next_page}]
end

And (/^I have enabled Duplicate Checking/) do
  myOrg = Management::UserDropdown.new
  myOrg.down_arrow_click
  myOrg.my_preferences_click

  myPrefs = Account::Preferences.new
  myPrefs.set_check_for_duplicates_checkbox true

  desired_next_page = 'Edit'
  step %Q[click Save and #{desired_next_page}]
end

And (/^set '([^']*)' rights to non admin%/) do |user_name|
  security = Management::SecurityGroups.new
  security.user_rights_link_click user_name
end