When(/^I click on Integrations on the management menu$/) do
  intMan = Management::EdhIntegration.new
  intMan.management_integrations_click
end

Then(/^I should be taken to the Integrations page$/) do
  intMan = Management::EdhIntegration.new
  expect(intMan.on_integrations_page?).to eq(true)
end

And (/^the Start Import button should be disabled on the integrations page$/) do
  intMan = Management::EdhIntegration.new
  expect(intMan.edh_start_import_button_enabled?).to eq(false)
end

And(/^I click on the Set up button on the integrations page$/) do
  intMan = Management::EdhIntegration.new
  intMan.set_up_click
end

And(/^I should see the set up EDH integration modal$/) do
  intMan = Management::EdhIntegration.new
  expect(intMan.setup_edh_modal_present?).to eq(true)
end

And(/^I enter '([^']*)' in the API key field on the set up EDH integration modal$/) do |field|
  intMan = Management::EdhIntegration.new(:api_key=>field)
  intMan.create
end

And(/^I enter '([^']*)' in the notifications area on the set up EDH integration modal$/) do |field|
  intMan = Management::EdhIntegration.new(:edh_notifications=>field)
  intMan.create
end

And(/^I click next on the set up EDH integration modal$/) do
  intMan = Management::EdhIntegration.new
  intMan.edh_integration_next_click
end

And(/^I click previous on the set up EDH integration modal$/) do
  intMan = Management::EdhIntegration.new
  intMan.edh_integration_previous_click
end

And(/^I click Save & Close on the set up EDH integration modal$/) do
  intMan = Management::EdhIntegration.new
  intMan.edh_integration_save_click
end

And(/^I click cancel on the set up EDH integration modal$/) do
  intMan = Management::EdhIntegration.new
  intMan.edh_integration_cancel_click
end

Then(/^the text on the Next button should change to '([^']*)' on the set up EDH integration modal$/) do |text|
  intMan = Management::EdhIntegration.new
  expect(intMan.edh_integration_next_text_include? text).to eq(true)
end

Then(/^the Start import button should be enabled on the integrations page$/) do
  intMan = Management::EdhIntegration.new
  expect(intMan.edh_start_import_button_enabled?).to eq(true)
end

And (/^I click the Start import button on the integrations page$/) do
  intMan = Management::EdhIntegration.new
  intMan.edh_start_import_button_click
end

And (/^I should see the edit integration page$/) do
  intMan = Management::EdhIntegration.new
  expect(intMan.edit_integration_page_present?).to eq(true)
end

And(/^I click on the Edit set up button on the integrations page$/) do
  intMan = Management::EdhIntegration.new
  intMan.edit_set_up_click
end

And(/^I click Save on the basic integration modal$/) do
  intMan = Management::EdhIntegration.new
  intMan.basic_integration_save_click
end

Then(/^I should see '([^']*)' on the integrations page$/) do |text|
  intMan = Management::EdhIntegration.new
  expect(intMan.integrations_page_content_include? text).to eq(true)
end

And(/^I click on the Map Campaigns button on the integrations page$/) do
  intMan = Management::EdhIntegration.new
  intMan.map_campaigns_click
end

And(/^I set the default eTapestry Fund to '([^']*)' on the set up EDH integration modal$/) do |selection|
  intMan = Management::EdhIntegration.new
  intMan.default_fund_select selection
end

And(/^I set the default eTapestry Campaign to '([^']*)' on the set up EDH integration modal$/) do |selection|
  intMan = Management::EdhIntegration.new
  intMan.default_campaign_select selection
end

And(/^I set the default eTapestry Approach to '([^']*)' on the set up EDH integration modal$/) do |selection|
  intMan = Management::EdhIntegration.new
  intMan.default_approach_select selection
end

And(/^I click Save on the set up EDH integration modal$/) do
  intMan = Management::EdhIntegration.new
  intMan.campaign_mappings_save_click
end

And(/^I click on the Select Historical Data button on the integrations page$/) do
  intMan = Management::EdhIntegration.new
  intMan.select_historical_data_click
end

And (/^I click Historical data created since on the set up EDH integration modal$/) do
  intMan = Management::EdhIntegration.new
  intMan.historical_data_created_since_click
end

And(/^I click All historical data on the set up EDH integration modal$/) do
  intMan = Management::EdhIntegration.new
  intMan.all_historical_data_set
end

Then(/^I should see the Import button on the integrations page$/) do
  intMan = Management::EdhIntegration.new
  expect(intMan.import_button_present?).to eq(true)
end

And(/^I click on the EDH sign up link$/) do
  intMan = Management::EdhIntegration.new
  intMan.us_edh_signup_click
end

Then(/^I should be taken to the US EDH signup page$/) do
  intMan = Management::EdhIntegration.new
  expect(intMan.on_us_EDH_sign_up_page?).to eq(true)
end

And(/^I click on the EDH user guide link$/) do
  intMan = Management::EdhIntegration.new
  intMan.edh_user_guide_click
end

Then(/^I should be taken to the EDH user guide page$/) do
  intMan = Management::EdhIntegration.new
  expect(intMan.on_EDH_user_guide_page?).to eq(true)
end

Then(/^I should see the '([^']*)' error on the set up EDH integration modal$/) do |error|
  intMan = Management::EdhIntegration.new
  expect(intMan.edh_integration_modal_error_include? error).to eq(true)
end

And(/^the next button should be disabled on the set up EDH integration modal$/) do
  intMan = Management::EdhIntegration.new
  expect(intMan.next_button_enabled?).to eq(false)
end

And(/^the Save and Close button should be disabled on the set up EDH integration modal$/) do
  intMan = Management::EdhIntegration.new
  expect(intMan.save_button_enabled?).to eq(false)
end

And (/^I clear out the API key field in the notifications area on the set up EDH integration modal$/) do
  intMan = Management::EdhIntegration.new
  intMan.delete_API_key_value
end

Then (/^the API key field should be highlighted in red$/) do
  intMan = Management::EdhIntegration.new
  expect(intMan.api_key_validation?).to eq(true)
end

Then (/^the Send data import notifications to field should be highlighted in red$/) do
  intMan = Management::EdhIntegration.new
  expect(intMan.edh_email_validation?).to eq(true)
end

And (/^I clear out the email field in the notifications area on the set up EDH integration modal$/) do
  intMan = Management::EdhIntegration.new
  intMan.delete_edh_email_value
end

And(/^I click on the Edit Mappings button on the integrations page$/) do
  intMan = Management::EdhIntegration.new
  intMan.edit_mappings_click
end

And(/^the EDH integration has been set up$/) do
  intMan = Management::EdhIntegration.new

  if expect(intMan.edh_start_import_button_enabled?).to eq(false)
    step "I click on the Set up button on the integrations page"
    step "I enter '68ef0843-4714-4d24-8033-c0204fb945e2' in the API key field on the set up EDH integration modal"
    step "I enter 'qa-1@blackbaud.com' in the notifications area on the set up EDH integration modal"
    step "I click next on the set up EDH integration modal"
    step "I set the default eTapestry Fund to 'General' on the set up EDH integration modal"
    step "I set the default eTapestry Campaign to 'Capital' on the set up EDH integration modal"
    step "I set the default eTapestry Approach to 'Personal Solicitation' on the set up EDH integration modal"
    step "I click next on the set up EDH integration modal"
    step "I click All historical data on the set up EDH integration modal"
    step "I click next on the set up EDH integration modal"
    step "I click next on the set up EDH integration modal"
    step "I should be taken to the Integrations page"
  end

end

And(/^I verify that an EDH Hero account was imported correctly$/) do
  step "I type 'Hilton' into the dynamic search field"
  step "I press Enter on the keyboard"
  step "I click on 'Kelsey Hilton' in the search results"
  step "I click on 'Personas' in the account header"
  step "the Address Lines should be set to '125 S Pennsylvania St'"
  step "the City should be set to 'Indianapolis'"
  step "the State should be set to 'IN'"
  step "the Postal Code should be set to '46204'"
  step "the Voice should be set to '(317) 226-4784'"
  step "the Email should be set to 'kelsey.hilton@blackbaud.com'"
  step "the Short Salutation should be set to 'Kelsey'"
  step "the Long Salutation should be set to 'Kelsey Hilton'"
  step "the Envelope Salutation should be set to 'Kelsey Hilton'"
  step "I click on 'Account Settings' in the account header"
  step "the Name Format value should be set to 'Individual'"
  step "the First Name should be set to 'Kelsey'"
  step "the Last Name should be set to 'Hilton'"
  step "the Account Name should be set to 'Kelsey Hilton'"
  step "the Sort Name should be set to 'Hilton, Kelsey'"
  step "the Recognition Name should be set to 'Kelsey Hilton'"
  step "the Recognition Type should be set to '(account name)'"
  step "I click on 'Defined Fields' in the account header"
  step "the 'EDH Account Id' should be set to '6181f10f-cba1-465e-8d7c-1dbff7c29c7e'"
  step "the 'EDH Account Type' should be set to 'Hero'"
  step "the 'Data Source' should be set to 'EDH Addition'"
end

And(/^I verify that an EDH Donor account was imported correctly$/) do
  step "I type 'Gloria' into the dynamic search field"
  step "I press Enter on the keyboard"
  step "I click on 'Gloria Burg' in the search results"
  step "I click on 'Personas' in the account header"
  step "the Address Lines should be set to '2261 Brooke Street'"
  step "the City should be set to 'Houston'"
  step "the State should be set to 'TX'"
  step "the Postal Code should be set to '77026'"
  step "the Email should be set to 'kelsey.hilton@blackbaud.com'"
  step "the Short Salutation should be set to 'Gloria'"
  step "the Long Salutation should be set to 'Gloria Burg'"
  step "the Envelope Salutation should be set to 'Gloria Burg'"
  step "I click on 'Account Settings' in the account header"
  step "the Name Format value should be set to 'Individual'"
  step "the First Name should be set to 'Gloria'"
  step "the Last Name should be set to 'Burg'"
  step "the Account Name should be set to 'Gloria Burg'"
  step "the Sort Name should be set to 'Burg, Gloria'"
  step "the Recognition Name should be set to 'Gloria Burg'"
  step "the Recognition Type should be set to '(account name)'"
  step "I click on 'Defined Fields' in the account header"
  step "the 'EDH Account Type' should be set to 'Donor'"
  step "the 'EDH Communication Preferences' should be set to 'Opt-In'"
  step "the 'Data Source' should be set to 'EDH Addition'"
end

And (/^I click import now on the everydayhero integration tile$/) do
  intMan = Management::EdhIntegration.new
  intMan.import_now_link_click
  intMan.import_now_confirm_button_click
end

Then (/^I wait for the edh import to finish successfully$/) do
  intMan = Management::EdhIntegration.new
  intMan.import_finish_successfully_wait
  ## only adding sleep here to ensure that the import has time to run ##
  sleep 5
end

Then (/^I verify that the EDH Notifications Email Address is set to '([^']*)'$/) do |value|
  intMan = Management::EdhIntegration.new
  intMan.edit_set_up_click
  expect(intMan.edh_notifications_email_address).to eq(value)
end

Then (/^I verify that the EDH API Key is set to '([^']*)'$/) do |value|
  intMan = Management::EdhIntegration.new
  intMan.edit_set_up_click
  expect(intMan.edh_api_key_value).to eq(value)
end

Then (/^I verify that the default Fund, Campaign, and Approach are set to '([^']*)', '([^']*)', and '([^']*)'$/) do |fund,campaign,approach|
  intMan = Management::EdhIntegration.new
  intMan.edit_mappings_click
  expect(intMan.edh_default_fund_value(fund)).to eq(true)
  expect(intMan.edh_default_campaign_value(campaign)).to eq(true)
  expect(intMan.edh_default_approach_value(approach)).to eq(true)
end

And (/^I add '([^']*)' as a new Fund/) do |value|
  intMan = Management::EdhIntegration.new
  intMan.new_fund_link_click
  intMan.set_new_fund_name(value)
end

And (/^I add '([^']*)' as a new Campaign/) do |value|
  intMan = Management::EdhIntegration.new
  intMan.new_campaign_link_click
  intMan.set_new_campaign_name(value)
end

And (/^I add '([^']*)' as a new Approach/) do |value|
  intMan = Management::EdhIntegration.new
  intMan.new_approach_link_click
  intMan.set_new_approach_name(value)
end

And (/the Save and Close button should be disabled on the set up edit mappings EDH integration modal$/) do
  intMan = Management::EdhIntegration.new
  expect(intMan.edh_integration_edit_mappings_save_enabled?).to eq(false)
end

And (/^I click cancel on the edit mappings EDH integration modal$/) do
  intMan = Management::EdhIntegration.new
  intMan.edh_integration_edit_mappings_cancel_click
end

And (/^I click the Pause Integration link on the set up EDH integration modal$/) do
  intMan = Management::EdhIntegration.new
  intMan.edh_pause_integration_link_click
end

Then (/^I should see the Pause Integration link change to Resume Integration on the set up EDH integration modal$/) do
  intMan = Management::EdhIntegration.new
  expect(intMan.edh_resume_integration_link_present?).to eq(true)
end

And (/^I should see a message confirming that the integration was paused$/) do
  intMan = Management::EdhIntegration.new
  expect(intMan.edh_integration_paused_message_present?).to eq(true)
end

And (/^I click the Resume Integration link on the set up EDH integration modal$/) do
  intMan = Management::EdhIntegration.new
  intMan.edh_resume_integration_link_click
end

Then (/^I should see the Resume Integration link change to Pause Integration on the set up EDH integration modal$/) do
  intMan = Management::EdhIntegration.new
  expect(intMan.edh_pause_integration_link_present?).to eq(true)
end

And (/^I verify that an EDH Participation was imported correctly$/) do
  step "I type 'Kelsey' into the dynamic search field"
  step "I press Enter on the keyboard"
  step "I click on 'Kelsey Hilton' in the search results"
  step "I click on 'Journal' in the account header"
  step "I click on the Participation listed in the journal"
  step "the date on the Participation should be set to '9/26/2016'"
  step "the Fundraiser should be set to 'Running with eTapestry 2016'"
  step "the Participant Goal should be set to '$1,000.00'on the participation"
  step "the Display Name should be set to 'Scrum Master Flex Is Saving The Day!' on the participation"
  step "the 'EDH Page Id' should be set to 'edc1e64c-0004-4000-8000-000000049efa'"
  step "the 'EDH Page URL' should be set to 'https://running-with-etapestry-2016.everydayhero-staging.com/us/scrum-master-flex-is-saving-the-day'"
  step "the 'EDH Team Name' should be set to 'Team Kelsey'"
  step "the 'EDH Team URL' should be set to 'https://running-with-etapestry-2016.everydayhero-staging.com/us/team-kelsey'"
  step "the 'EDH Team Position' should be set to 'Leader'"
  step "the 'Data Source' should be set to 'EDH Addition'"
end

And (/^I click on the Participation listed in the journal$/) do
  intMan = Management::EdhIntegration.new
  intMan.journal_page_participation_link_click
end

And (/^the Participant Goal should be set to '([^']*)'on the participation$/) do |value|
  intMan = Management::EdhIntegration.new
  expect(intMan.participant_goal_value).to eq(value)
end

And (/^the Display Name should be set to '([^']*)' on the participation$/) do |value|
  intMan = Management::EdhIntegration.new
  expect(intMan.participation_display_name_value).to eq(value)
end

And (/^I change the edh email to '([^']*)' in the EDH Basic Integrations Settings pop up/) do |value|
  intMan = Management::EdhIntegration.new
  intMan.change_edh_notification_email_address(value)
end

And (/^I change the edh API to '([^']*)' in the EDH Basic Integrations Settings pop up/) do |value|
  intMan = Management::EdhIntegration.new
  intMan.change_edh_api_key(value)
end

And (/^I should see the edh warning message '([^']*)'/) do |value|
  intMan = Management::EdhIntegration.new
  expect(intMan.invalid_api_message_visible(value)).to eq(true)
end

And (/^I click Save & Close on the set up EDH campaign mapping modal/) do
  intMan = Management::EdhIntegration.new
  intMan.click_save_and_close_mappings_modal
end

And (/^the Fundraiser should be set to '([^']*)'$/) do |value|
  intMan = Management::EdhIntegration.new
  expect(intMan.participation_fundraiser_drop_down_value).to eq(value)
end

And (/^the date on the Participation should be set to '([^']*)'$/) do |value|
  intMan = Management::EdhIntegration.new
  expect(intMan.participation_fundraiser_date_value).to eq(value)
end

And (/^I verify that an EDH CC Gift was imported correctly$/) do
  step "I type 'Glor' into the dynamic search field"
  step "I press Enter on the keyboard"
  step "I click on 'Gloria Burg' in the search results"
  step "I click on 'Journal' in the account header"
  step "I click on the '$108.90' journal entry on the journal page"
  step "the date on the Gift should be set to '9/26/2016'"

  steps %Q{
  And the Received Amount should be set to '$108.90'
  And the Non-Deductible Amount should be set to the '$0.00'
  And the Fund should be set to 'General'
  And the Campaign should be set to 'Capital'
  And the Approach should be set to 'Personal Solicitation'
  And the Fundraiser should be set to 'Running with eTapestry 2016'
  And the Fundraiser Donation Message should be set to 'Kelsey you are so awesome!'
  And the Receipt field should be set to '001502'
  And the Gift Type should be set to 'Credit/Debit Card'
  And the CC Card Number should be set to 'xxxx'
  And the CC Expiration Date Month should be set to '9'
  And the CC Expiration Date Year should be set to '2016'
  And the CC Type should be set to 'Visa'
  And I click the Tribute bar
  And the Soft Credit Information should be set to 'Kelsey Hilton'
  And the Soft Credit Amount should be set to '$108.90'
  And I click on the User Defined Fields section on the new payment page
  And I should see 'EDH Page Id' set to 'edc1e64c-0004-4000-8000-000000049efa' on the payment page
  And I should see 'EDH Transaction Id' set to 'b412df99-4c16-426a-977c-f7d04fcd8709' on the payment page
  And I should see 'EDH Date Gift Received' set to '9/26/2016' on the payment page
  And I should see 'EDH Transaction Type' set to 'P2P' on the payment page
  And I should see 'Data Source' set to 'EDH Addition' on the payment page
  }

end

And (/^I click on the '([^']*)' journal entry on the journal page$/) do |value|
  intMan = Management::EdhIntegration.new
  intMan.specific_journal_entry_click(value)
end

And (/^the Fundraiser Donation Message should be set to '([^']*)'$/) do |value|
  intMan = Management::EdhIntegration.new
  expect(intMan.gift_fundraiser_donation_message_value).to eq(value)
end

And (/^the Receipt field should be set to '([^']*)'$/) do |value|
  intMan = Management::EdhIntegration.new
  expect(intMan.gift_receipt_field_value).to eq(value)
end

And (/^the date on the Gift should be set to '([^']*)'$/) do |value|
  intMan = Management::EdhIntegration.new
  expect(intMan.gift_date_value).to eq(value)
end

And (/^the CC Card Number should be set to '([^']*)'$/) do |value|
  intMan = Management::EdhIntegration.new
  expect(intMan.cc_number_value).to eq(value)
end

And (/^the CC Expiration Date Month should be set to '([^']*)'$/) do |value|
  intMan = Management::EdhIntegration.new
  expect(intMan.cc_exp_month_value).to eq(value)
end

And (/^the CC Expiration Date Year should be set to '([^']*)'$/) do |value|
  intMan = Management::EdhIntegration.new
  expect(intMan.cc_exp_year_value).to eq(value)
end

And (/^the CC Type should be set to '([^']*)'$/) do |value|
  intMan = Management::EdhIntegration.new
  expect(intMan.cc_type_value(value)).to eq true
end

Then (/^I verify that a existing EDH Hero was matched correctly$/) do
  step "I type 'Joe' into the dynamic search field"
  step "I press Enter on the keyboard"
  step "I click on 'Joe Runner' in the search results"
  step "I click on 'Personas' in the account header"
  step "the Address Lines should be set to '123 E Market St'"
  step "the City should be set to 'Indianapolis'"
  step "the State should be set to 'IN'"
  step "the Postal Code should be set to '46280'"
  step "the Email should be set to 'hammer.kimberly@gmail.com'"
  step "the Short Salutation should be set to 'Joe'"
  step "the Long Salutation should be set to 'Joe Runner'"
  step "the Envelope Salutation should be set to 'Joe Runner'"
  step "I click on 'Account Settings' in the account header"
  step "the Name Format value should be set to 'Individual'"
  step "the First Name should be set to 'Joe'"
  step "the Last Name should be set to 'Runner'"
  step "the Account Name should be set to 'Joe Runner'"
  step "the Sort Name should be set to 'Runner, Joe'"
  step "the Recognition Name should be set to 'Joe Runner'"
  step "the Recognition Type should be set to '(account name)'"
  step "I click on 'Defined Fields' in the account header"
  step "the 'EDH Account Id' should be set to '45c017b6-9cd2-4076-9673-a5af53ae2d0a'"
  step "the 'EDH Account Type' should be set to 'Hero'"
  step "the 'Data Source' should be set to 'EDH Addition, EDH Update'"
  step "I click on 'Journal' in the account header"
  step "I should see the message '5 Journal Entries' on the journal page"
  step "I click on the 'Participation' journal entry on the journal page"
  step "the date on the Participation should be set to '9/26/2016'"
  step "the Fundraiser should be set to 'everydayhero'"
  step "the Participant Goal should be set to '$700.00'on the participation"
  step "the Display Name should be set to 'Joe Is At It Again' on the participation"
  step "the 'EDH Page Id' should be set to 'edc1e64c-0004-4000-8000-000000049eff'"
  step "the 'EDH Page URL' should be set to 'https://give.everydayhero-staging.com/us/joe-s-at-it-again'"
  step "the 'Data Source' should be set to 'EDH Addition'"
end

And (/^I should see the text '([^']*)' in the journal Note$/) do |value|
  intMan = Management::EdhIntegration.new
  expect(intMan.journal_note_text_value(value)).to eq true
end

And (/^I verify that a existing EDH Donor was matched correctly$/) do
  step "I type 'Mary' into the dynamic search field"
  step "I press Enter on the keyboard"
  step "I click on 'Mary Tracy' in the search results"
  step "I click on 'Personas' in the account header"
  step "the Address Lines should be set to '3171 Dovetail Estates'"
  step "the City should be set to 'Valliant'"
  step "the State should be set to 'OK'"
  step "the Postal Code should be set to '74764'"
  step "the Email should be set to 'skimmymik@yahoo.com\nkimberly.hammer@blackbaud.com'"
  step "the Short Salutation should be set to 'Mary'"
  step "the Long Salutation should be set to 'Mary Tracy'"
  step "the Envelope Salutation should be set to 'Mary Tracy'"
  step "I click on 'Account Settings' in the account header"
  step "the Name Format value should be set to 'Individual'"
  step "the First Name should be set to 'Mary'"
  step "the Last Name should be set to 'Tracy'"
  step "the Account Name should be set to 'Mary Tracy'"
  step "the Sort Name should be set to 'Tracy, Mary'"
  step "the Recognition Name should be set to 'Mary Tracy'"
  step "the Recognition Type should be set to '(account name)'"
  step "I click on 'Defined Fields' in the account header"
  step "the 'EDH Account Type' should be set to 'Donor'"
  step "the 'EDH Communication Preferences' should be set to 'Opt-In'"
  step "the 'Data Source' should be set to 'EDH Addition, EDH Update'"
  step "I click on 'Journal' in the account header"
  step "I should see the message '3 Journal Entries' on the journal page"
  step "I click on the 'Note' journal entry on the journal page"
  step "I should see the text 'everydayhero Duplicate Info' in the journal Note"
end

And (/^I verify that EDH Hero was matched to an existing constituent account correctly$/) do
  step "I type 'Luna' into the dynamic search field"
  step "I press Enter on the keyboard"
  step "I click on 'Luna P Maynard' in the search results"
  step "I click on 'Personas' in the account header"
  step "the Address Lines should be set to '4065 Reppert Coal Road'"
  step "the City should be set to 'Ridgeland'"
  step "the State should be set to 'MS'"
  step "the Postal Code should be set to '39157'"
  step "the Email should be set to 'kimberlylhammer@yahoo.com'"
  step "the Short Salutation should be set to 'Luna'"
  step "the Long Salutation should be set to 'Ms. Maynard'"
  step "the Envelope Salutation should be set to 'Ms. Luna P Maynard'"
  step "the Voice should be set to '601-209-9247'"
  step "I click on 'Account Settings' in the account header"
  step "the Name Format value should be set to 'Individual'"
  step "the Title should be set to 'Ms.'"
  step "the First Name should be set to 'Luna'"
  step "the Middle Name should be set to 'P'"
  step "the Last Name should be set to 'Maynard'"
  step "the Account Name should be set to 'Luna P Maynard'"
  step "the Sort Name should be set to 'Maynard, Luna P'"
  step "the Recognition Name should be set to 'Luna P Maynard'"
  step "the Recognition Type should be set to '(account name)'"
  step "I click on 'Defined Fields' in the account header"
  step "the 'Gender' should be set to 'Female'"
  step "the 'EDH Account Id' should be set to '0d4ae7bb-e854-45d1-abf9-a1189f568f22'"
  step "the 'EDH Account Type' should be set to 'Hero'"
  step "the 'Data Source' should be set to 'Advanced Import (4/26/2016 2:31 PM), EDH Update'"
  step "I click on 'Journal' in the account header"
  step "I should see the message '4 Journal Entries' on the journal page"
  step "I click on the 'Note' journal entry on the journal page"
  step "I should see the text 'everydayhero Duplicate Info' in the journal Note"
end

And (/^I verify that EDH Donor was matched to an existing constituent account correctly$/) do
  step "I type 'David' into the dynamic search field"
  step "I press Enter on the keyboard"
  step "I click on 'David Mendez' in the search results"
  step "I click on 'Personas' in the account header"
  step "the Address Lines should be set to '3452 Washburn Street'"
  step "the City should be set to 'Baton Rouge'"
  step "the State should be set to 'LA'"
  step "the Postal Code should be set to '70806'"
  step "the Email should be set to 'kimberly.hammer@blackbaud.com'"
  step "the Short Salutation should be set to 'David'"
  step "the Long Salutation should be set to 'Mr. Mendez'"
  step "the Envelope Salutation should be set to 'Mr. David Mendez'"
  step "the Voice should be set to '225-303-1801'"
  step "I click on 'Account Settings' in the account header"
  step "the Name Format value should be set to 'Individual'"
  step "the Title should be set to 'Mr.'"
  step "the First Name should be set to 'David'"
  step "the Last Name should be set to 'Mendez'"
  step "the Account Name should be set to 'David Mendez'"
  step "the Sort Name should be set to 'Mendez, David'"
  step "the Recognition Name should be set to 'David Mendez'"
  step "the Recognition Type should be set to '(account name)'"
  step "I click on 'Defined Fields' in the account header"
  step "the 'Gender' should be set to 'Male'"
  step "the 'EDH Account Type' should be set to 'Donor'"
  step "the 'Data Source' should be set to 'Advanced Import (4/26/2016 2:31 PM), EDH Update'"
  step "I click on 'Journal' in the account header"
  step "I should see the message '3 Journal Entries' on the journal page"
  step "I click on the 'Note' journal entry on the journal page"
  step "I should see the text 'everydayhero Duplicate Info' in the journal Note"
end

And (/^I verify that multiple EDH Participations for a single Hero were imported correctly$/) do
  step "I type 'Bud' into the dynamic search field"
  step "I press Enter on the keyboard"
  step "I click on 'Buddy Sr.' in the search results"
  step "I click on 'Journal' in the account header"
  step "I should see the message '6 Journal Entries' on the journal page"
  step "I click on the 'Participation' journal entry on the journal page"
  step "the date on the Participation should be set to '9/27/2016'"
  step "the Fundraiser should be set to 'Running with eTapestry 2016'"
  step "the Participant Goal should be set to '$1,000.00'on the participation"
  step "the Display Name should be set to 'Run with Bud' on the participation"
  step "I click Next to move to the next journal entry"
  step "the date on the Participation should be set to '9/27/2016'"
  step "the Fundraiser should be set to 'Running with eTapestry 2016'"
  step "the Participant Goal should be set to '$100.00'on the participation"
  step "the Display Name should be set to 'Run with Lillian' on the participation"
  step "I click Next to move to the next journal entry"
  step "the date on the Participation should be set to '9/27/2016'"
  step "the Fundraiser should be set to 'Running with eTapestry 2016'"
  step "the Participant Goal should be set to '$100.00'on the participation"
  step "the Display Name should be set to 'Run with Ryan' on the participation"
end

And (/^I click Next to move to the next journal entry$/) do
  intMan = Management::EdhIntegration.new
  intMan.next_journal_entry_click
end

And (/I verify that I can manually add an additional Participation to a Hero who is already participating in a Fundraiser$/) do
  step "I type 'Beyonce' into the dynamic search field"
  step "I press Enter on the keyboard"
  step "I click on 'Beyonce' in the search results"
  step "I click on 'Journal' in the account header"
  step "select Participation from the Add New... drop down menu"
  step "I set the fundraiser to 'Running with eTapestry 2016' on the participation"
  intMan = Management::EdhIntegration.new
  intMan.set_fundraiser_date
  intMan.set_fundraiser_goal
  intMan.set_fundraiser_display_name
  step "I click Save And 'Edit'"
  step "the date on the Participation should be set to '9/28/2016'"
  step "the Fundraiser should be set to 'Running with eTapestry 2016'"
  step "the Participant Goal should be set to '$2,000.00'on the participation"
  step "the Display Name should be set to 'H To The Izzo' on the participation"
  step "I click on 'Journal' in the account header"
  step "I should see the message '3 Journal Entries' on the journal page"
end

And (/^I set the fundraiser to '([^']*)' on the participation$/) do |value|
intMan = Management::EdhIntegration.new
intMan.set_fundraiser_event_on_participation(value)
end

And (/^I successfully merge two accounts with multiple Participations for the same Fundraiser$/) do
  step "I type 'Hammer' into the dynamic search field"
  step "I press Enter on the keyboard"
  step "I click on 'Allen Hammer' in the search results"
  step "I click on 'Account Settings' in the account header"
  step "I click Merge Role on the account settings page"
  step "I type 'Hammer' into the search field in the Find Account popup window"
  step "I click Find in the Find Account popup window"
  step "I click on 'Kimberly Hammer' in the Find Account popup window"
  step "I click Save"
  step "I click Yes on the Account Settings page"
  step "I click on 'Journal' in the account header"
  step "I should see the message '17 Journal Entries' on the journal page"
  step "I click on the 'Note' journal entry on the journal page"
  step "I should see the text 'Allen Hammer (178) merged into Kimberly Hammer (177).' in the journal Note"
  step "I click on 'Personas' in the account header"
  step "the Address Lines should be set to '615 Lockerbie Pl'"
  step "the City should be set to 'Carmel'"
  step "the State should be set to 'IN'"
  step "the Postal Code should be set to '46032'"
  step "the Email should be set to 'kimberly.hammer@blackbaud.com'"
  step "the Short Salutation should be set to 'Kimberly'"
  step "the Long Salutation should be set to 'Kimberly Hammer'"
  step "the Envelope Salutation should be set to 'Kimberly Hammer'"
  step "the Voice should be set to '(317) 495-5697'"
  step "I click on 'Account Settings' in the account header"
  step "the Name Format value should be set to 'Individual'"
  step "the First Name should be set to 'Kimberly'"
  step "the Last Name should be set to 'Hammer'"
  step "the Account Name should be set to 'Kimberly Hammer'"
  step "the Sort Name should be set to 'Hammer, Kimberly'"
  step "the Recognition Name should be set to 'Kimberly Hammer'"
  step "the Recognition Type should be set to '(account name)'"
  step "I click on 'Defined Fields' in the account header"
  step "the 'EDH Account Id' should be set to '45728f06-73f9-42bc-9844-a6ba1c70dd0a'"
  step "the 'EDH Account Type' should be set to 'Hero, Donor'"
  step "the 'EDH Communication Preferences' should be set to 'Opt-In'"
  step "the 'Data Source' should be set to 'EDH Addition, EDH Update'"
end

And (/^I verify that the Participation Summary report displays information properly$/) do
  steps %Q{
  I click Reports on the main menu
  And I click on eTapestry Standard Reports on the reports menu
  And I click on Fundraiser Summary on the reports menu
  And I click on the drop down box for query category Base
  And I click on the drop down box for query name All Constituents
  And I set the Fundraiser on the report launch page to 'Start 2017 Off On The Right Foot!'
  And I accept on the default report format 'Display Results on Screen'
  And I click on submit
  And I
}
end

And (/^And I click on Fundraiser Summary on the reports menu$/) do
  intMan = Management::EdhIntegration.new
  intMan.click_fundraiser_summary_report
end

And (/^I set the Fundraiser on the report launch page to '([^']*)'$/) do |value|
  intMan = Management::EdhIntegration.new
  intMan.set_fundraiser_on_report_launch_page(value)
end