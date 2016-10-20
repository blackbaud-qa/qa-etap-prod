When(/^I click Create a Page/) do
  sleep 1
  diy = DIY::Onlineforms.new()
  diy.create_a_page_click
end

When(/^I click Online Giving Page/) do
  diy = DIY::Onlineforms.new()
  diy.choose_online_giving_click
end

When(/^I select the Embeddable template/) do
  diy = DIY::Onlineforms.new()
  diy.choose_embedded_template_click
end

When(/^I click Next on the DIY template page/) do
  diy = DIY::Onlineforms.new()
  diy.template_next_click
end

When(/^I set the Name to '([^']*)' on the DIY settings page/) do |name|
  diy = DIY::Onlineforms.new(:diy_settings_name=>name)
  diy.create
end

When(/^I set the Title to '([^']*)' on the DIY settings page/) do |title|
  diy = DIY::Onlineforms.new(:diy_settings_title=>title)
  diy.create
end

When(/^I set the URL to '([^']*)' on the DIY settings page/) do |url|
  diy = DIY::Onlineforms.new(:diy_settings_url=>url)
  diy.create
end

When(/^I set the From what address\? to '([^']*)' on the DIY settings page/) do |email|
  diy = DIY::Onlineforms.new(:diy_settings_from_address=>email)
  diy.create
end

When(/^I set the From Subject to '([^']*)' on the DIY settings page/) do |subject|
  diy = DIY::Onlineforms.new(:diy_settings_from_subject=>subject)
  diy.create
end

When(/^I set the To what address\(es\)\? to '([^']*)' on the DIY settings page/) do |email|
  diy = DIY::Onlineforms.new(:diy_settings_to_address=>email)
  diy.create
end

When(/^I set the Subject to '([^']*)' on the DIY settings page/) do |subject|
  diy = DIY::Onlineforms.new(:diy_settings_to_subject=>subject)
  diy.create
end

When(/^I set the Fund to '([^']*)' on the DIY settings page/) do |fund|
  diy = DIY::Onlineforms.new()
  diy.fund_click
  diy.choose_fund(fund)
  diy.fund_update_click
end

And(/^I set the Campaign to '([^']*)' on the DIY settings page/) do |campaign|
  diy = DIY::Onlineforms.new()
  diy.campaign_click
  diy.choose_campaign(campaign)
end

And(/^I set the Approach to '([^']*)' on the DIY settings page/) do |approach|
  diy = DIY::Onlineforms.new()
  diy.approach_click
  diy.choose_approach(approach)
end

When(/^I click Submit on the DIY settings page/) do
  diy = DIY::Onlineforms.new()
  diy.settings_click_submit
end

When(/^I click Go Live on the DIY editor page$/) do
  sleep 2
  diy = DIY::Onlineforms.new()
  diy.go_live_click
end

And(/^I click Yes, Go Live! on the DIY editor page$/) do
  diy = DIY::Onlineforms.new()
  diy.go_live_confirm_click
end

And(/^I should see the new DIY page$/) do
  diy = DIY::Onlineforms.new()
  expect(diy.on_new_diy_page?).to eq(true)
end

And(/^I should see the edited DIY page named '([^']*)'$/) do |page|
  diy = DIY::Onlineforms.new()
  expect(diy.on_edited_diy_page? page).to eq(true)
end

And(/^I click Edit for the form titled '([^']*)'$/) do |page|
  sleep 1
  diy = DIY::Onlineforms.new()
  diy.edit_form(page)
end

And(/^I click Edit Style on the DIY editor page$/) do
  sleep 3
  diy = DIY::Onlineforms.new()
  diy.edit_style_click
end

And(/^I click Swap Template on the DIY editor page$/) do
  diy = DIY::Onlineforms.new()
  diy.swap_template_click
end

And(/^I select the Steel template on the DIY editor page$/) do
  diy = DIY::Onlineforms.new()
  diy.choose_steel_template_click
end

And(/^I click Swap To This Template on the DIY editor page$/) do
  diy = DIY::Onlineforms.new()
  diy.swap_to_this_template_click
end

And(/^I change the Title font to Comic Sans 20pt on the DIY editor page$/) do
  diy = DIY::Onlineforms.new()
  diy.title_font_comic_sans_set
  diy.title_font_20pt_set
end

And(/^I change the Main Background to #EEEEEE on the DIY editor page$/) do
  diy = DIY::Onlineforms.new(:background_color=>'#EEEEEE')
  diy.create
end

And(/^I click Update under the Main Background on the DIY editor page$/) do
  diy = DIY::Onlineforms.new()
  diy.background_update_click
end

And(/^I click Update on the DIY editor page$/) do
  diy = DIY::Onlineforms.new()
  diy.edit_update_click
end

And(/^I click Settings on the DIY editor page$/) do
  sleep 10
  diy = DIY::Onlineforms.new()
  diy.edit_settings_click
end

And(/^I click Change Selected Funds on the DIY settings page$/) do
  diy = DIY::Onlineforms.new()
  diy.change_funds_click
end


And(/^I click Unrestricted on the DIY settings page$/) do
  diy = DIY::Onlineforms.new()
  diy.unrestricted_fund_click
end

And(/^I click Update on the DIY funds page$/) do
  diy = DIY::Onlineforms.new()
  diy.funds_update_click
end

And(/^I click Select a Campaign on the DIY settings page$/) do
  diy = DIY::Onlineforms.new()
  diy.select_campaign_click
end

And(/^I click Annual on the DIY settings page$/) do
  diy = DIY::Onlineforms.new()
  diy.campaign_annual_click
end

And(/^I click Select an Approach on the DIY settings page$/) do
  diy = DIY::Onlineforms.new()
  diy.select_approach_click
end

And(/^I click Unsolicited on the DIY settings page$/) do
  diy = DIY::Onlineforms.new()
  diy.approach_unsolicited_click
end

And(/^I click Update on the DIY settings page$/) do
  sleep 3
  diy = DIY::Onlineforms.new()
  diy.settings_update_click
end

And(/I hover over the Donation Amount on the DIY editor page$/) do
  sleep 1
  diy = DIY::Onlineforms.new()
  diy.donation_section_hover
  sleep 1
end

And(/I click the pencil icon that appears on the DIY editor page$/) do
  diy = DIY::Onlineforms.new()
  diy.edit_section_click
end

And(/I mark the checkbox next to Include Specific Giving Levels on the DIY editor page$/) do
  diy = DIY::Onlineforms.new()
  diy.include_specific_check
end

And(/I click Update on the DIY gift info page$/) do
  diy = DIY::Onlineforms.new()
  diy.gift_update_click
end

And(/I click Add Item on the DIY editor page$/) do
  diy = DIY::Onlineforms.new()
  diy.add_item_click
end

And(/I select Add Image on the DIY editor page$/) do
  diy = DIY::Onlineforms.new()
  diy.add_image_click
end

And(/I double-click on the default image on the DIY editor page$/) do
  # step "I double click the image to open the insert image pop up"
  diy = DIY::Onlineforms.new()
  diy.new_image_click
end

And(/I select an image from my computer$/) do
  step "I click the browse icon on the insert image pop up on the new Correspondence Template page"
  # step "I select a file under browse in resources browser"
  # step "I click Upload in resources browser"
  step "I click the uploaded image in resources browser"
  step "I click Ok in resources browser"
end

And(/I select Add Fields on the DIY editor page$/) do
  diy = DIY::Onlineforms.new()
  diy.add_fields_click
end

And(/I select '([^']*)' for the field category on the DIY editor page$/) do |value|
  sleep 1
  diy = DIY::Onlineforms.new()
  diy.base_field_cat_select value
end

And(/I click ([^']*) UDF on the DIY editor page$/) do |udf_name|
  diy = DIY::Onlineforms.new()
  diy.field_select_click udf_name
end  
  
And(/^I click '([^']*)' on the DIY editor page/) do |value|
  sleep 2
  diy = DIY::Onlineforms.new
  diy.field_select_gender_click value
end

And(/I click Update on the Add Fields page$/) do
  diy = DIY::Onlineforms.new()
  diy.fields_update_click
end

And(/I select Add Text on the DIY editor page$/) do
  diy = DIY::Onlineforms.new()
  diy.add_text_click
end

And(/I change the default text on the DIY editor page$/) do
  diy = DIY::Onlineforms.new()
  diy.update_default_text
end

And(/I click Update on the Add Text page$/) do
  diy = DIY::Onlineforms.new()
  diy.update_text_click
end

And(/I click Save on the DIY editor page$/) do
  sleep 2
  diy = DIY::Onlineforms.new()
  diy.diy_save_click
end

And(/I confirm saving my changes$/) do
  sleep 2
  diy = DIY::Onlineforms.new()
  diy.diy_save_confirm_click
end

And(/I click Copy for the form titled '([^']*)'$/) do |name|
  sleep 2
  diy = DIY::Onlineforms.new()
  diy.donation_page_copy_click name
end

And(/I click Disable for the form titled '([^']*)'$/) do |name|
  sleep 2
  diy = DIY::Onlineforms.new()
  diy.donation_page_disable_click name
end

And(/I click Delete for the form titled '([^']*)'$/) do |name|
  sleep 3
  diy = DIY::Onlineforms.new()
  diy.donation_page_delete_click name
end

And(/^I click Yes, Disable the Page$/) do
  diy = DIY::Onlineforms.new()
  diy.donation_page_disable_confirm_click
end

And(/I click Yes, Delete the Page$/) do
  diy = DIY::Onlineforms.new()
  diy.donation_page_delete_confirm_click
end

And(/^I click Replace on the DIY editor page$/) do
  diy = DIY::Onlineforms.new()
  diy.donation_page_replace_click
  diy.wait_for_diy_home_page
end

Then(/the Donation Page should no longer show$/) do
  sleep 3
  diy = DIY::Onlineforms.new()
  expect(diy.donation_page_present? 'Donation Page').to eq(false)
end

Then(/the '([^']*)' DIY page should no longer show$/) do |diy_page_name|
  sleep 3
  diy = DIY::Onlineforms.new()
  expect(diy.diy_page_present? diy_page_name).to eq(false)
end

And (/^I click on the link for the form titled ([^']*)$/) do |diy_page_name|
  sleep 5
  diy = DIY::Onlineforms.new
  diy.diy_page_wait_for_title
  diy.diy_page_link_click diy_page_name
end

And(/^I open a new tab in my browser$/) do
  landing = Admin::Landing.new
  landing.communications_shift_click

end

And(/^I switch to the new tab in my browser$/) do
  diy = DIY::Onlineforms.new()
  diy.switch_tab
end

And(/^I set the Fund to '([^']*)' on the DIY Donation Page$/) do |fund|
  diy = DIY::Onlineforms.new()
  diy.live_fund_set fund
end

And(/^I set Gender to '([^']*)' on the DIY Donation Page$/) do |gender|
  sleep 5
  diy = DIY::Onlineforms.new()
  diy.live_gender_set gender
end

And (/^I set Maiden Name to '([^']*)' on the DIY Donation Page/) do |maiden_name|
  diy = DIY::Onlineforms.new()
  diy.live_maiden_name_set maiden_name
end

And(/^I set the Donation Amount to Other on the DIY Donation Page$/) do
  diy = DIY::Onlineforms.new()
  diy.live_amount_other_set
end

And(/^I enter '([^']*)' as the amount on the DIY Donation Page$/) do |amount|
  diy = DIY::Onlineforms.new(:live_amount_field=>amount)
  diy.create
end

And(/^I set the Donation Frequency to '([^']*)' on the DIY Donation Page$/) do |freq|
  diy = DIY::Onlineforms.new()
  diy.live_freq_set freq
end

And(/^I set the Title to '([^']*)' on the DIY Donation Page$/) do |title|
  diy = DIY::Onlineforms.new()
  diy.live_title_set title
end

And(/^I set First Name to '([^']*)' on the DIY Donation Page$/) do |name|
  diy = DIY::Onlineforms.new(:live_first_name=>name)
  diy.create
end

And(/^I set Last Name to '([^']*)' on the DIY Donation Page$/) do |name|
  diy = DIY::Onlineforms.new(:live_last_name=>name)
  diy.create
end

And(/^I set Country to '([^']*)' on the DIY Donation Page$/) do |country|
  diy = DIY::Onlineforms.new()
  diy.live_country_set country
end

And(/^I set Address Lines to '([^']*)' on the DIY Donation Page$/) do |address|
  diy = DIY::Onlineforms.new(:live_address=>address)
  diy.create
end

And(/^I set City to '([^']*)' on the DIY Donation Page$/) do |city|
  diy = DIY::Onlineforms.new(:live_city=>city)
  diy.create
end

And(/^I set State to '([^']*)' on the DIY Donation Page$/) do |state|
  diy = DIY::Onlineforms.new()
  diy.live_state_set state
end

And(/^I set Postal Code to '([^']*)' on the DIY Donation Page$/) do |postal|
  diy = DIY::Onlineforms.new(:live_postal=>postal)
  diy.create
end

And(/^I set Email to '([^']*)' on the DIY Donation Page$/) do |email|
  diy = DIY::Onlineforms.new(:live_email=>email)
  diy.create
end

And(/^I set Confirm Email to '([^']*)' on the DIY Donation Page$/) do |email|
  diy = DIY::Onlineforms.new(:live_email_confirm=>email)
  diy.create
end

And(/^I set Phone to '([^']*)' on the DIY Donation Page$/) do |phone|
  diy = DIY::Onlineforms.new(:live_phone=>phone)
  diy.create
end

And(/^I set the Card Type to '([^']*)' on the DIY Donation Page$/) do |card|
  diy = DIY::Onlineforms.new()
  diy.live_card_type_set card
end

And(/^I set Name on Card to '([^']*)' on the DIY Donation Page$/) do |name|
  diy = DIY::Onlineforms.new(:live_card_name=>name)
  diy.create
end

And(/^I set Card Number to '([^']*)' on the DIY Donation Page$/) do |number|
  diy = DIY::Onlineforms.new(:live_card_number=>number)
  diy.create
end

And(/^I set CVV2 to '([^']*)' on the DIY Donation Page$/) do |cvv|
  diy = DIY::Onlineforms.new(:live_card_cvv=>cvv)
  diy.create
end

And(/^I set Expiration Month to '([^']*)' on the DIY Donation Page$/) do |exp|
  diy = DIY::Onlineforms.new()
  diy.live_exp_month_set exp
end

And(/^I set Expiration Year to '([^']*)' on the DIY Donation Page$/) do |exp|
  diy = DIY::Onlineforms.new()
  diy.live_exp_year_set exp
end

And(/^I click Submit on the DIY Donation Page$/) do
  begin
    diy = DIY::Onlineforms.new()
    diy.live_submit_click
  rescue
    #expected possible error
  end
end

Then(/^the transaction will process successfully$/) do
  diy = DIY::Onlineforms.new()
  expect(diy.live_transaction_successful?).to eq(true)
end

And(/^the transaction will be added to the database with accurate information$/) do
  steps %Q{
    When I type 'Jon Snow' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'Jon Snow' in the search results
    And I click Journal

    And I click on the Gift listed in the journal
    And the Received Amount should be set to '$7.00'
    And the Fund should be set to 'General'
    And I click on the User Defined Fields section on the new payment page
    And I should see 'DIY Test Page' set to 'Existing Donation Page' on the payment page
    And I click Delete on the transaction page
    Then I should see the message '0 Journal Entries' on the journal page
  }
  ## Removed these two steps from the series above because a note will not be created in the zero state database
  # And I click on the Note listed in the journal
  # And I click delete on the note page

end

And(/^I close the current tab$/) do
  diy = DIY::Onlineforms.new()
  diy.close_current_tab
end

And(/^I click Contact Page$/) do
  diy = DIY::Onlineforms.new()
  diy.create_contact_page_click
end

And(/^I select the Custom template$/) do
  diy = DIY::Onlineforms.new()
  diy.custom_template_click
end

And(/^I click Next on the DIY create contact page$/) do
  diy = DIY::Onlineforms.new()
  diy.create_contact_next_click
end

And(/^I set the Journal Contact Subject to '([^']*)' on the DIY settings page$/) do |subject|
  diy = DIY::Onlineforms.new(:journal_contact_subject => subject)
  diy.create
end

Then(/^the custom template should be shown$/) do
  diy = DIY::Onlineforms.new()
  expect(diy.custom_template_displayed?).to eq(true)
end

And(/^I click Update on the DIY Edit Ticket Options page/) do
  diy = DIY::Onlineforms.new
  diy.ticket_section_update
end

And(/^I hover over the Ticket Section on the DIY editor page/) do
  sleep 1
  diy = DIY::Onlineforms.new
  diy.ticket_section_hover
  sleep 1
end

And (/^I unmark the checkbox next to Send the donor a confirmation email?/) do
  diy = DIY::Onlineforms.new
  diy.unmark_donor_confirmation
end

And (/^I unmark the checkbox nex to Send your organization a confirmation email?/) do
  diy = DIY::Onlineforms.new
  diy.unmark_org_confirmation
end

And (/^I set the Donation Amount to '([^']*)' on the DIY Donation Page/) do |amount|
  diy = DIY::Onlineforms.new(:diy_donation_amount_field=>amount)
  diy.create
end

And (/^I set Ticket Quantity A to '([^']*)' on the DIY Donation Page/) do |value|
  diy = DIY::Onlineforms.new(:diy_ticket_quantityA_value=>value)
  diy.create
end

Then (/^the UDF Test Page should no longer show/) do
  sleep 3
  diy = DIY::Onlineforms.new()
  expect(diy.udf_test_page_present? 'UDF Test Page').to eq(false)
end

And (/^I set Account Type to '([^']*)' on the DIY Donation Page/) do |value|
  diy = DIY::Onlineforms.new()
  diy.live_account_type_set value
end

And (/^I set Ticket Quantity B to '([^']*)' on the DIY Donation Page/) do |value|
  diy = DIY::Onlineforms.new(:diy_ticket_quantityB_value=>value)
  diy.create
end

And(/^a DIY form titled ([^']*) exists/) do |page_name|
  steps %Q{
    When I click Management on the main menu
    And I click on DIY Forms on the management menu
  }

  diy = DIY::Onlineforms.new
  if !diy.diy_page_exists? page_name
    steps %Q{
      And I create and publish a new DIY page named #{page_name}
          }
  end
end

And(/^I create and publish a new DIY page named ([^']*)/) do |page_name|
  mod_page_name = page_name.gsub(" ", "_")

  steps %Q{
    When I click Management on the main menu
    And I click on DIY Forms on the management menu
    And I click Create a Page
    And I click Online Giving Page
    And I select the Embeddable template
    And I click Next on the DIY template page
    And I set the Name to '#{page_name}' on the DIY settings page
    And I set the Title to '#{page_name}' on the DIY settings page
    And I set the URL to '#{mod_page_name}' on the DIY settings page
    And I set the From what address? to 'qa1@blackbaud.com' on the DIY settings page
    And I set the From Subject to 'Thank you for your donation!' on the DIY settings page
    And I set the To what address(es)? to 'qa1@blackbaud.com' on the DIY settings page
    And I set the Subject to 'Donation Received' on the DIY settings page
    And I set the Fund to 'General' on the DIY settings page
    And I click Submit on the DIY settings page
    And I click Go Live on the DIY editor page
    And I click Yes, Go Live! on the DIY editor page
  }
end

And(/^the DIY page ([^']*) contains the UDF ([^']*)/) do |diy_page_name, udf_name|
  sleep 1

  steps %Q{
    When I click Management on the main menu
    And I click on DIY Forms on the management menu
    And I click Edit for the form titled '#{diy_page_name}'

    And I click Add Item on the DIY editor page
    And I select Add Fields on the DIY editor page
    And I select 'Base' for the field category on the DIY editor page
    And I click #{udf_name} UDF on the DIY editor page
    And I click Update on the Add Fields page

    And I click Save on the DIY editor page
    And I confirm saving my changes
    And I click Go Live on the DIY editor page
    And I click Yes, Go Live! on the DIY editor page
    And I click Replace on the DIY editor page
  }
end

And(/^all email notifications are ([^']*) for the DIY page ([^']*)/) do |notification_state, diy_page_name|
  sleep 5

  steps %Q{
    When I click Management on the main menu
    And I click on DIY Forms on the management menu
    And I click Edit for the form titled '#{diy_page_name}'

    And I click Settings on the DIY editor page
    And email notifications are #{notification_state}
    And I click Update on the DIY settings page

    And I click Save on the DIY editor page
    And I confirm saving my changes
    And I click Go Live on the DIY editor page
    And I click Yes, Go Live! on the DIY editor page
    And I click Replace on the DIY editor page
  }
end

And(/^email notifications are ([^']*)/) do |notification_state|
  sleep 3
  diy = DIY::Onlineforms.new
  diy.org_confirmation_email_checkbox 'disable'
  diy.donor_confirmation_email_checkbox 'disable'
  sleep 3
end

And(/^I submit a successful credit card transaction for ([^']*) ([^']*) on page ([^']*)/) do |donor_first_name, donor_last_name, page_name|
  sleep 1

  steps %Q{
      Given I am logged into eTap
      When I click Management on the main menu
      And I click on DIY Forms on the management menu
      And I click on the link for the form titled #{page_name}
      And I switch to the new tab in my browser
      And I set Gender to 'Male' on the DIY Donation Page
      And I set the Donation Amount to '7.00' on the DIY Donation Page
      And I set the Donation Frequency to 'One Time' on the DIY Donation Page
      And I set the Title to 'Mr.' on the DIY Donation Page
      And I set First Name to '#{donor_first_name}' on the DIY Donation Page
      And I set Last Name to '#{donor_last_name}' on the DIY Donation Page
      And I set Country to 'United States' on the DIY Donation Page
      And I set Address Lines to '123 Main St.' on the DIY Donation Page
      And I set City to 'Indianapolis' on the DIY Donation Page
      And I set State to 'Indiana' on the DIY Donation Page
      And I set Postal Code to '46280' on the DIY Donation Page
      And I set Email to 'matt.dilts@blackbaud.com' on the DIY Donation Page
      And I set Confirm Email to 'matt.dilts@blackbaud.com' on the DIY Donation Page
      And I set Phone to '317-336-3827' on the DIY Donation Page
      And I set the Card Type to 'MasterCard' on the DIY Donation Page
      And I set Name on Card to '#{donor_first_name} #{donor_last_name}' on the DIY Donation Page
      And I set Card Number to '4111111111111111' on the DIY Donation Page
      And I set CVV2 to '123' on the DIY Donation Page
      And I set Expiration Month to '02' on the DIY Donation Page
      And I set Expiration Year to '2034' on the DIY Donation Page
      And I click Submit on the DIY Donation Page
      And I close the current tab
  }
end

And(/^I submit a successful credit card transaction for ([^']*) '([^']*)' ([^']*) on page ([^']*)/) do |donor_first_name, donor_maiden_name, donor_last_name, page_name|
  sleep 1

  steps %Q{
      Given I am logged into eTap
      When I click Management on the main menu
      And I click on DIY Forms on the management menu
      And I click on the link for the form titled #{page_name}
      And I switch to the new tab in my browser
      And I set Gender to 'Female' on the DIY Donation Page
      And I set Maiden Name to '#{donor_maiden_name}' on the DIY Donation Page
      And I set the Donation Amount to '7.00' on the DIY Donation Page
      And I set the Donation Frequency to 'One Time' on the DIY Donation Page
      And I set the Title to 'Mr.' on the DIY Donation Page
      And I set First Name to '#{donor_first_name}' on the DIY Donation Page
      And I set Last Name to '#{donor_last_name}' on the DIY Donation Page
      And I set Country to 'United States' on the DIY Donation Page
      And I set Address Lines to '123 Main St.' on the DIY Donation Page
      And I set City to 'Indianapolis' on the DIY Donation Page
      And I set State to 'Indiana' on the DIY Donation Page
      And I set Postal Code to '46280' on the DIY Donation Page
      And I set Email to 'matt.dilts@blackbaud.com' on the DIY Donation Page
      And I set Confirm Email to 'matt.dilts@blackbaud.com' on the DIY Donation Page
      And I set Phone to '317-336-3827' on the DIY Donation Page
      And I set the Card Type to 'MasterCard' on the DIY Donation Page
      And I set Name on Card to '#{donor_first_name} #{donor_last_name}' on the DIY Donation Page
      And I set Card Number to '4111111111111111' on the DIY Donation Page
      And I set CVV2 to '123' on the DIY Donation Page
      And I set Expiration Month to '02' on the DIY Donation Page
      And I set Expiration Year to '2034' on the DIY Donation Page
      And I click Submit on the DIY Donation Page
      And I close the current tab
  }
end

And(/^the constituent ([^']*) should appear as ([^']*) with Maiden Name ([^']*)/) do |constit_name, gender, maiden_name|
  steps %Q{
      Given I am logged into eTap
      When I click Accounts on the main menu
      And I click on Find an Account on the accounts menu
      And I type '#{constit_name}' into the search field
      And I press Enter on the keyboard
      And I click on Defined Fields from the Role Icon drop down for '#{constit_name}'
    }

  defined_fields = Account::DefinedFields.new
  expect(defined_fields.udf_value_by_key 'Gender').to eq(gender)
  expect(defined_fields.udf_value_by_key 'Maiden Name').to eq(maiden_name)
end

And(/^the constituent ([^']*) should be ([^']*)/) do |constit_name, gender|
  steps %Q{
      Given I am logged into eTap
      When I click Accounts on the main menu
      And I click on Find an Account on the accounts menu
      And I type '#{constit_name}' into the search field
      And I press Enter on the keyboard
      And I click on Defined Fields from the Role Icon drop down for '#{constit_name}'
    }

  defined_fields = Account::DefinedFields.new
  expect(defined_fields.udf_value_by_key 'Gender').to eq(gender)
end

And(/^I scroll up on the DIY page to prevent automation errors$/) do
  diy = DIY::Onlineforms.new()
  diy.contact_scroll_top

end


And(/^I click the magnifying glass in the DIY Add Fields modal$/) do
  diy = DIY::Onlineforms.new()
  diy.diy_magnifying_glass_click
end

And (/^I type '([^']*)' in the search field in the DIY Add Fields modal/) do |value|
  diy = DIY::Onlineforms.new(:diy_search_field_text => value)
  diy.create
end

Then (/I should see Account Type as disabled in the DIY Add Fields modal/) do
  diy = DIY::Onlineforms.new
  expect(diy.diy_disabled_account_type_udf).to eq(true)
end

And (/I click No, Just Make a Copy to copy the page/) do
  diy = DIY::Onlineforms.new
  diy.no_just_make_copy_click
end

When(/^I select the Chisel template/) do
  diy = DIY::Onlineforms.new()
  diy.choose_chisel_template_click
end

Then (/I should see the share icons on the page/) do
  diy = DIY::Onlineforms.new
  expect(diy.diy_share_icons).to eq(true)
end

And (/I click the Facebook Share Icon on the DIY page/) do
  diy = DIY::Onlineforms.new
  diy.diy_facebook_share_icon
end

Then (/I should see the Facebook tab appear/) do
  diy = DIY::Onlineforms.new
  expect(diy.facebook_login_window).to eq(true)
end

And(/^I set the Ticket Quantity to '([^']*)' on the DIY Event Page/) do |value|
  diy = DIY::Onlineforms.new(:live_ticket_quantity=>value)
  diy.create
end

And(/^I set the Membership Type to '([^']*)' on the DIY Membership page/) do |value|
  diy = DIY::Onlineforms.new
  diy.set_live_membership_type value
end

And(/^I set the Membership Level to '([^']*)' on the DIY Membership page/) do |value|
  diy = DIY::Onlineforms.new
  diy.set_live_membership_level value
end

And(/^I set the Volunteer Availability to '([^']*)' on the DIY Volunteer page/) do |value|
  diy = DIY::Onlineforms.new
  diy.set_live_volunteer_availability value
end

And(/^I set the Volunteer Skill Set to '([^']*)' on the DIY Volunteer page/) do |value|
  diy = DIY::Onlineforms.new
  diy.set_live_volunteer_skill_set value
end

And(/^I set the Volunteer Interest Area to '([^']*)' on the DIY Volunteer page/) do |value|
  diy = DIY::Onlineforms.new
  diy.set_live_volunteer_interest_area value
end

And(/^the transaction will go through successfully/) do
  diy = DIY::Onlineforms.new()
  expect(diy.live_transaction_successful?).to eq(true)
end

And(/^the registration will go through successfully/) do
  diy = DIY::Onlineforms.new()
  expect(diy.live_registration_successful?).to eq(true)
end

And (/I click on the Contact listed in the journal/) do
  diy = DIY::Onlineforms.new
  diy.contact_in_journal_click
end

And (/^I should see the Method set to '([^']*)' on the contact page/) do |value|
  diy = DIY::Onlineforms.new
  expect(diy.contact_method).to eq(value)
end

And(/^I set Company to '([^']*)' on the DIY Page/) do |value|
  diy = DIY::Onlineforms.new()
  diy.live_company_set value
end

And(/^I set Date of Birth to '([^']*)' on the DIY Page/) do |value|
  diy = DIY::Onlineforms.new()
  diy.live_date_of_birth_set value
end

And(/^I set Birthdate to '([^']*)' on the DIY Page/) do |value|
  diy = DIY::Onlineforms.new()
  diy.live_birthdate_set value
end

And(/^I set Job Title to '([^']*)' on the DIY Page/) do |value|
  diy = DIY::Onlineforms.new()
  diy.live_job_title_set value
end

And (/^I set Marital Status to '([^']*)' on the DIY Page/) do |value|
  diy = DIY::Onlineforms.new()
  diy.live_marital_status_set value
end

And(/^I set Middle Name to '([^']*)' on the DIY Donation Page$/) do |name|
  diy = DIY::Onlineforms.new(:live_middle_name=>name)
  diy.create
end

And(/^I set Suffix to '([^']*)' on the DIY Donation Page$/) do |name|
  diy = DIY::Onlineforms.new(:live_suffix=>name)
  diy.create
end

And (/^I set the Default Country to '([^']*)' on the DIY settings page$/) do |value|
  diy = DIY::Onlineforms.new
  diy.set_default_country_diy value
end

And (/^I should see the country set to '([^']*)' on the DIY page$/) do |value|
  diy = DIY::Onlineforms.new
  expect(diy.diy_country_default).to eq(value)
end

And (/I click Event Registration Page/) do
  diy = DIY::Onlineforms.new
  diy.new_event_page_click
end

And (/I unmark both checkboxes for sending email confirmations/) do
  diy = DIY::Onlineforms.new
  diy.send_donor_confirmation_click
  diy.send_org_confirmation_click
end

And (/I connect a Ticket Quantity UDF to my Event Page/) do
  diy = DIY::Onlineforms.new
  diy.event_info_section_hover
  sleep 1
  diy.edit_section_click
  diy = DIY::Onlineforms.new(:set_ticket_label=>'Ticket A')
  diy.create
  diy = DIY::Onlineforms.new(:set_ticket_description=>'Ticket A includes admission, but does not include parking fees.')
  diy.create
  diy = DIY::Onlineforms.new(:set_ticket_price=>'25.00')
  diy.create
  diy = DIY::Onlineforms.new(:set_ticket_nondeductible_amount=>'10.00')
  diy.create
  diy.select_ticket_field
  diy.diy_non_hidden_modal_ok_click
end

And (/I click Membership Signup Page/) do
  diy = DIY::Onlineforms.new
  diy.new_membership_page_click
end

And (/I set Membership fields up on my diy membership page/) do
  diy = DIY::Onlineforms.new
  diy.membership_type_select_link_click
  diy.membership_modal_search_button_click
  diy = DIY::Onlineforms.new(:set_membership_search_term=>'membership')
  diy.create
  diy.press_enter
  diy.membership_type_udf_click
  diy.diy_non_hidden_modal_ok_click
  diy.membership_level_select_link_click
  diy.membership_modal_search_button_click
  diy = DIY::Onlineforms.new(:set_membership_search_term=>'membership')
  diy.create
  diy.press_enter
  diy.membership_level_udf_click
  diy = DIY::Onlineforms.new(:set_membership_level_one=>'10')
  diy.create
  diy = DIY::Onlineforms.new(:set_membership_level_two=>'25')
  diy.create
  diy = DIY::Onlineforms.new(:set_membership_level_three=>'40')
  diy.create
  diy.diy_non_hidden_modal_ok_click
  diy.diy_non_hidden_modal_ok_click
end

And (/I click Volunteer Page/) do
  diy = DIY::Onlineforms.new
  diy.new_volunteer_page_click
end

And (/I set Volunteer Fields up on my diy volunteer page/) do
  sleep 10
  diy = DIY::Onlineforms.new
  diy.volunteer_avail_section_hover
  sleep 3
  diy.edit_section_click
  diy.select_diy_udf_link_click
  diy.membership_modal_search_button_click
  diy = DIY::Onlineforms.new(:set_membership_search_term=>'volunteer')
  diy.create
  diy.press_enter
  diy.volunteer_avail_udf_link_click
  diy.diy_non_hidden_modal_ok_click
  diy.volunteer_skills_section_hover
  sleep 3
  diy.edit_section_click
  diy.select_diy_udf_link_click
  diy.membership_modal_search_button_click
  diy = DIY::Onlineforms.new(:set_membership_search_term=>'volunteer')
  diy.create
  diy.press_enter
  diy.volunteer_skills_udf_link_click
  diy.diy_non_hidden_modal_ok_click
  diy.volunteer_int_section_hover
  sleep 3
  diy.edit_section_click
  diy.select_diy_udf_link_click
  diy.membership_modal_search_button_click
  diy = DIY::Onlineforms.new(:set_membership_search_term=>'volunteer')
  diy.create
  diy.press_enter
  diy.volunteer_int_udf_link_click
  diy.diy_non_hidden_modal_ok_click
end


And(/^I select the Float template on the DIY editor page$/) do
  diy = DIY::Onlineforms.new()
  diy.choose_float_template_click
end

And (/^I unmark the checkbox next to Include comments box/) do
  diy = DIY::Onlineforms.new
  diy.unmark_include_comments_box
end

And (/^I should see Date of Birth on the edited DIY page$/) do
  diy = DIY::Onlineforms.new()
  expect(diy.date_of_birth_diy?).to eq(true)
end

And (/^I click Update on the DIY Edit Field modal/) do
  diy = DIY::Onlineforms.new()
  diy.update_button_diy_edit_field
end

And (/^I should see Birthdate on the edited DIY page$/) do
  diy = DIY::Onlineforms.new()
  expect(diy.birthdate_diy?).to eq(true)
end

When (/^I make edits to an existing diy contact page$/) do
  steps %Q{
      When I click Management on the main menu
      And I click on DIY Forms on the management menu
      And I click Edit for the form titled 'Existing Contact Page WITH Address Fields'
      And I click Edit Style on the DIY editor page
      And I click Swap Template on the DIY editor page
      And I select the Float template on the DIY editor page
      And I click Swap To This Template on the DIY editor page
      And I click Edit Style on the DIY editor page
      And I change the Title font to Comic Sans 20pt on the DIY editor page
      And I click Update on the DIY editor page
      And I click Settings on the DIY editor page
      And I unmark the checkbox next to Include comments box
      And I click Update on the DIY settings page
      And I click Add Item on the DIY editor page
      And I select Add Fields on the DIY editor page
      And I select 'Base' for the field category on the DIY editor page
      And I click 'Board Membership' on the DIY editor page
      And I click Update on the Add Fields page
      And I click Add Item on the DIY editor page
      And I select Add Text on the DIY editor page
      And I change the default text on the DIY editor page
      And I click Update on the Add Text page
      And I click Save on the DIY editor page
      And I confirm saving my changes
      And I click Go Live on the DIY editor page
      And I click Yes, Go Live! on the DIY editor page
      And I click Replace on the DIY editor page
}
end

And (/I submit an entry on the live contact page$/) do
  steps %Q{
      And I click on the link for the form titled Existing Contact Page WITH Address Fields
      And I switch to the new tab in my browser
      And I set the Board Membership to 'Current' on the DIY Donation Page
      And I set Account Type to 'Individual' on the DIY Donation Page
      And I set Gender to 'Female' on the DIY Donation Page
      And I set Company to 'Blackbaud' on the DIY Page
      And I set Date of Birth to '11/5/1980' on the DIY Page
      And I set Job Title to 'Support Analyst' on the DIY Page
      And I set Marital Status to 'Single' on the DIY Page
      And I set the Title to 'Miss' on the DIY Donation Page
      And I set First Name to 'Heather' on the DIY Donation Page
      And I set Middle Name to 'Lynn' on the DIY Donation Page
      And I set Last Name to 'Johnson' on the DIY Donation Page
      And I set Country to 'United States' on the DIY Donation Page
      And I set Address Lines to '1222 Stop 12 Road' on the DIY Donation Page
      And I set City to 'Greenwood' on the DIY Donation Page
      And I set State to 'Indiana' on the DIY Donation Page
      And I set Postal Code to '46143' on the DIY Donation Page
      And I set Email to 'test@test.com' on the DIY Donation Page
      And I set Confirm Email to 'test@test.com' on the DIY Donation Page
      And I set Phone to '478-999-9875' on the DIY Donation Page
      And I click Submit on the DIY Donation Page
      And the registration will go through successfully
      And I close the current tab
  }
end

And (/I verify that the DIY contact submission was created correctly$/) do
  steps %Q{
      And I type 'Heather Johnson' into the dynamic search field
      And I press Enter on the keyboard
      And I click on 'Heather Lynn Johnson' in the search results
      And I click on 'Personas' in the account header
      And the Address Lines should be set to '1222 Stop 12 Road'
      And the City should be set to 'Greenwood'
      And the State should be set to 'IN'
      And the Postal Code should be set to '46143'
      And the Voice should be set to '478-999-9875'
      And the Email should be set to 'test@test.com'
      And the Short Salutation should be set to 'Heather'
      And the Long Salutation should be set to 'Miss Johnson'
      And the Envelope Salutation should be set to 'Miss Heather Lynn Johnson'
      And the 'Company' should be set to 'Blackbaud'
      And the 'Job Title' should be set to 'Support Analyst'
      And I click on 'Journal' in the account header
      And I click on the Contact listed in the journal
      And the date field on the transaction screen should be populated with Today
      And I should see the Subject set to 'Existing Contact Page WITH Address Fields' on the contact page
      And I should see the Method set to 'DIY Form-Contact' on the contact page
      And I should see 'DIY Test Page' set to 'Existing Contact Page WITH Address Fields' on the payment page
      And I click on 'Defined Fields' in the account header
      And I should see 'Account Type' set to 'Individual' on the payment page
      And I should see 'Date of Birth' set to '11/5/1980' on the payment page
      And I should see 'Marital Status' set to 'Single' on the payment page
      And I should see 'Board Membership' set to 'Current' on the payment page
  }
end

And (/^I change the name of the user defined field '([^']*)' to '([^']*)' on the DIY page$/) do |original_udf_label, new_udf_label|
  steps %Q{
      When I click Management on the main menu
      And I click on DIY Forms on the management menu
      And I click Edit for the form titled 'Existing Contact Page WITH Address Fields'
      And I hover over '#{original_udf_label}' field on the DIY editor page
      And I click the pencil icon that appears on the DIY editor page
      And I set the Label field to '#{new_udf_label}' on the DIY editor page
      And I click Update on the DIY Edit Field modal
      And I click Save on the DIY editor page
      And I confirm saving my changes
      And I click Go Live on the DIY editor page
      And I click Yes, Go Live! on the DIY editor page
      And I click Replace on the DIY editor page
  }
end


And(/^I hover over '([^']*)' field on the DIY editor page$/) do |original_udf_label|
  diy = DIY::Onlineforms.new
  diy.diy_udf_hover (original_udf_label)
end

And (/^I set the Label field to '([^']*)' on the DIY editor page$/) do |new_udf_label|
  diy = DIY::Onlineforms.new()
  diy.delete_label_text
  diy.set_diy_label (new_udf_label)
end


And (/^I set the Board Membership to '([^']*)' on the DIY Donation Page$/) do |value|
  diy = DIY::Onlineforms.new()
  diy.live_board_membership_set (value)
end


And (/^I submit an entry on the live edited contact page$/) do
  steps %Q{
      And I click on the link for the form titled Existing Contact Page WITH Address Fields
      And I switch to the new tab in my browser
      And I set the Board Membership to 'Former' on the DIY Donation Page
      And I set Account Type to 'Individual' on the DIY Donation Page
      And I set Gender to 'Female' on the DIY Donation Page
      And I set Company to 'Microsoft' on the DIY Page
      And I set Birthdate to '10/5/1984' on the DIY Page
      And I set Job Title to 'SQE' on the DIY Page
      And I set Marital Status to 'Single' on the DIY Page
      And I set the Title to 'Mr.' on the DIY Donation Page
      And I set First Name to 'George' on the DIY Donation Page
      And I set Last Name to 'Franks' on the DIY Donation Page
      And I set Country to 'United States' on the DIY Donation Page
      And I set Address Lines to '6952 Yellowwood Ave' on the DIY Donation Page
      And I set City to 'Indianapolis' on the DIY Donation Page
      And I set State to 'Indiana' on the DIY Donation Page
      And I set Postal Code to '46143' on the DIY Donation Page
      And I set Email to 'test@test.com' on the DIY Donation Page
      And I set Confirm Email to 'test@test.com' on the DIY Donation Page
      And I set Phone to '317-888-8745' on the DIY Donation Page
      And I click Submit on the DIY Donation Page
      And the registration will go through successfully
      And I close the current tab
  }
end

And (/^I verify that the DIY contact submission via the edited contact page was created correctly$/) do
  steps %Q{
      And I type 'George Franks' into the dynamic search field
      And I press Enter on the keyboard
      And I click on 'George Franks' in the search results
      And I click on 'Personas' in the account header
      And the Address Lines should be set to '6952 Yellowwood Ave'
      And the City should be set to 'Indianapolis'
      And the State should be set to 'IN'
      And the Postal Code should be set to '46143'
      And the Voice should be set to '317-888-8745'
      And the Email should be set to 'test@test.com'
      And the Short Salutation should be set to 'George'
      And the Long Salutation should be set to 'Mr. Franks'
      And the Envelope Salutation should be set to 'Mr. George Franks'
      And the 'Company' should be set to 'Microsoft'
      And the 'Job Title' should be set to 'SQE'
      And I click on 'Journal' in the account header
      And I click on the Contact listed in the journal
      And the date field on the transaction screen should be populated with Today
      And I should see the Subject set to 'Existing Contact Page WITH Address Fields' on the contact page
      And I should see the Method set to 'DIY Form-Contact' on the contact page
      And I should see 'DIY Test Page' set to 'Existing Contact Page WITH Address Fields' on the payment page
      And I click on 'Defined Fields' in the account header
      And I should see 'Account Type' set to 'Individual' on the payment page
      And I should see 'Date of Birth' set to '10/5/1984' on the payment page
      And I should see 'Marital Status' set to 'Single' on the payment page
      And I should see 'Board Membership' set to 'Former' on the payment page
  }
end

When (/^I make edits to an existing diy event page$/) do
        landing = Admin::Landing.new
        landing.management_click
        sleep 2
        landing.management_dd_diy_click
   step "I click Edit for the form titled 'Existing Event Page'"
        sleep 3
        diy = DIY::Onlineforms.new()
        diy.edit_style_click
        diy.swap_template_click
        diy.choose_float_template_click
        diy.swap_to_this_template_click
        sleep 3
        diy.edit_style_click
        diy.title_font_comic_sans_set
        diy.title_font_20pt_set
        diy = DIY::Onlineforms.new(:background_color=>'#EEEEEE')
        diy.create
        diy.edit_update_click
        sleep 10
        diy.edit_settings_click
        diy.unmark_include_comments_box
        sleep 3
        diy.settings_update_click
        diy.add_item_click
        diy.add_fields_click
   step "I select 'Base' for the field category on the DIY editor page"
   step "I click 'Board Membership' on the DIY editor page"
   step "I click 'Date of Birth' on the DIY editor page"
        diy.fields_update_click
        diy.add_item_click
        diy.add_text_click
        diy.update_default_text
        diy.update_text_click
        sleep 2
        diy.diy_save_click
        sleep 2
        diy.diy_save_confirm_click
        sleep 2
        diy.go_live_click
        diy.go_live_confirm_click
        sleep 10
        diy.donation_page_replace_click
        diy.wait_for_diy_home_page
end

And (/I submit an entry on the live event page$/) do
  step "I click on the link for the form titled Existing Event Page"
       sleep 3
       diy = DIY::Onlineforms.new()
       diy.switch_tab
  steps %Q{
      And I set the Ticket Quantity to '4' on the DIY Event Page
      And I set Account Type to 'Individual' on the DIY Donation Page
      And I set Date of Birth to '10/10/1982' on the DIY Page
      And I set the Board Membership to 'Current' on the DIY Donation Page
      And I set the Title to 'Mr.' on the DIY Donation Page
      And I set First Name to 'Harry' on the DIY Donation Page
      And I set Middle Name to 'James' on the DIY Donation Page
      And I set Last Name to 'Smith' on the DIY Donation Page
      And I set Country to 'United States' on the DIY Donation Page
      And I set Address Lines to '1545 Summers Drive' on the DIY Donation Page
      And I set City to 'Indianapolis' on the DIY Donation Page
      And I set State to 'Indiana' on the DIY Donation Page
      And I set Postal Code to '46259' on the DIY Donation Page
      And I set Email to 'test@test.com' on the DIY Donation Page
      And I set Confirm Email to 'test@test.com' on the DIY Donation Page
      And I set Phone to '458-999-9875' on the DIY Donation Page
      And I set the Card Type to 'Visa' on the DIY Donation Page
      And I set Name on Card to 'Harry Smith' on the DIY Donation Page
      And I set Card Number to '4111111111111111' on the DIY Donation Page
      And I set CVV2 to '123' on the DIY Donation Page
      And I set Expiration Month to '02' on the DIY Donation Page
      And I set Expiration Year to '2033' on the DIY Donation Page
}
#     diy = DIY::Onlineforms.new()
     diy.live_submit_click
#     diy = DIY::Onlineforms.new()
     expect(diy.live_transaction_successful?).to eq(true)
#     diy = DIY::Onlineforms.new()
     diy.close_current_tab
end

And (/I verify that the DIY event submission was created correctly$/) do
  steps %Q{
      And I type 'Harry Smith' into the dynamic search field
      And I press Enter on the keyboard
      And I click on 'Harry James Smith' in the search results
      And I click on 'Personas' in the account header
      And the Address Lines should be set to '1545 Summers Drive'
      And the City should be set to 'Indianapolis'
      And the State should be set to 'IN'
      And the Postal Code should be set to '46259'
      And the Voice should be set to '458-999-9875'
      And the Email should be set to 'test@test.com'
      And the Short Salutation should be set to 'Harry'
      And the Long Salutation should be set to 'Mr. Smith'
      And the Envelope Salutation should be set to 'Mr. Harry James Smith'
      And I click on 'Journal' in the account header
      And I click on the Gift listed in the journal
      And the date field on the transaction screen should be populated with Today
      And the Received Amount should be set to '$100.00'
      And the Non-Deductible Amount should be set to the '$40.00'
      And the Fund should be set to 'General'
      And the Campaign should be set to 'Annual'
      And the Approach should be set to 'Unsolicited'
      And I click Gift Types
      And I should see the message 'Credit/Debit Card has been processed via' on the recurring gift screen
      And I should see the message 'eCommerce Page' on the recurring gift screen
      And I click on the User Defined Fields section on the new payment page
      And I should see 'DIY Test Page' set to 'Existing Event Page' on the payment page
      And I should see 'Ticket Quantity' set to '4' on the payment page
      And I click on 'Defined Fields' in the account header
      And I should see 'Account Type' set to 'Individual' on the payment page
      And I should see 'Date of Birth' set to '10/10/1982' on the payment page
      And I should see 'Board Membership' set to 'Current' on the payment page
  }
end

And (/^I change the name of the user defined field '([^']*)' to '([^']*)' on the DIY Event page$/) do |original_udf_label, new_udf_label|
  steps %Q{
      When I click Management on the main menu
      And I click on DIY Forms on the management menu
      And I click Edit for the form titled 'Existing Event Page'
      And I hover over '#{original_udf_label}' field on the DIY editor page
      And I click the pencil icon that appears on the DIY editor page
      And I set the Label field to '#{new_udf_label}' on the DIY editor page
      And I click Update on the DIY Edit Field modal
      And I click Save on the DIY editor page
      And I confirm saving my changes
      And I click Go Live on the DIY editor page
      And I click Yes, Go Live! on the DIY editor page
      And I click Replace on the DIY editor page
  }
end

And (/I submit an entry on the live edited event page$/) do
  step "I click on the link for the form titled Existing Event Page"
  sleep 3
  diy = DIY::Onlineforms.new()
  diy.switch_tab
  steps %Q{
      And I set the Ticket Quantity to '2' on the DIY Event Page
      And I set Account Type to 'Individual' on the DIY Donation Page
      And I set Birthdate to '12/10/1974' on the DIY Page
      And I set the Board Membership to 'Former' on the DIY Donation Page
      And I set the Title to 'Mr.' on the DIY Donation Page
      And I set First Name to 'Frank' on the DIY Donation Page
      And I set Middle Name to 'David' on the DIY Donation Page
      And I set Last Name to 'Flynn' on the DIY Donation Page
      And I set Country to 'United States' on the DIY Donation Page
      And I set Address Lines to '5667 Frost Street' on the DIY Donation Page
      And I set City to 'Indianapolis' on the DIY Donation Page
      And I set State to 'Indiana' on the DIY Donation Page
      And I set Postal Code to '46223' on the DIY Donation Page
      And I set Email to 'test@test.com' on the DIY Donation Page
      And I set Confirm Email to 'test@test.com' on the DIY Donation Page
      And I set Phone to '588-777-8962' on the DIY Donation Page
      And I set the Card Type to 'Visa' on the DIY Donation Page
      And I set Name on Card to 'Frank Flynn' on the DIY Donation Page
      And I set Card Number to '4111111111111111' on the DIY Donation Page
      And I set CVV2 to '123' on the DIY Donation Page
      And I set Expiration Month to '02' on the DIY Donation Page
      And I set Expiration Year to '2033' on the DIY Donation Page
}
#      diy = DIY::Onlineforms.new()
      diy.live_submit_click
#      diy = DIY::Onlineforms.new()
      expect(diy.live_transaction_successful?).to eq(true)
#      diy = DIY::Onlineforms.new()
      diy.close_current_tab

end

And (/^I verify that the DIY event submission via the edited event page was created correctly$/) do
  steps %Q{
      And I type 'Frank Flynn' into the dynamic search field
      And I press Enter on the keyboard
      And I click on 'Frank David Flynn' in the search results
      And I click on 'Personas' in the account header
      And the Address Lines should be set to '5667 Frost Street'
      And the City should be set to 'Indianapolis'
      And the State should be set to 'IN'
      And the Postal Code should be set to '46223'
      And the Voice should be set to '588-777-8962'
      And the Email should be set to 'test@test.com'
      And the Short Salutation should be set to 'Frank'
      And the Long Salutation should be set to 'Mr. Flynn'
      And the Envelope Salutation should be set to 'Mr. Frank David Flynn'
      And I click on 'Journal' in the account header
      And I click on the Gift listed in the journal
      And the date field on the transaction screen should be populated with Today
      And the Received Amount should be set to '$50.00'
      And the Non-Deductible Amount should be set to the '$20.00'
      And the Fund should be set to 'General'
      And the Campaign should be set to 'Annual'
      And the Approach should be set to 'Unsolicited'
      And I click Gift Types
      And I should see the message 'Credit/Debit Card has been processed via' on the recurring gift screen
      And I should see the message 'eCommerce Page' on the recurring gift screen
      And I click on the User Defined Fields section on the new payment page
      And I should see 'DIY Test Page' set to 'Existing Event Page' on the payment page
      And I should see 'Ticket Quantity' set to '2' on the payment page
      And I click on 'Defined Fields' in the account header
      And I should see 'Account Type' set to 'Individual' on the payment page
      And I should see 'Date of Birth' set to '12/10/1974' on the payment page
      And I should see 'Board Membership' set to 'Former' on the payment page
  }
end

And (/^I set the '([^']*)' UDF to '([^']*)' on the DIY page$/) do |udf, value|
  diy = DIY::Onlineforms.new()
  diy.set_diy_udf_to_value(udf,value)
end

Then(/^I should see the "([^"]*)" DIY error$/) do |error|
  diy = DIY::Onlineforms.new()
  expect(diy.error_message).to eq(error)
end