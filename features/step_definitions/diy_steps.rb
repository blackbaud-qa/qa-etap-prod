When(/^I click on DIY Forms on the management page/) do
  diy = DIY::Onlineforms.new()
  diy.management_page_diy_click
end

When(/^I click Create a Page/) do
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

When(/^I click Submit on the DIY settings page/) do
  diy = DIY::Onlineforms.new()
  diy.settings_click_submit
end

When(/^I click Go Live on the DIY editor page$/) do
  diy = DIY::Onlineforms.new()
  diy.go_live_click
end

And(/^I click Yes, Go Live! on the DIY editor page$/) do
  diy = DIY::Onlineforms.new()
  diy.go_live_confirm_click
  sleep 3
end

And(/^I click Edit for the form titled '([^']*)'$/) do |page|
  diy = DIY::Onlineforms.new()
  diy.edit_form(page)
end

And(/^I click Edit Style on the DIY editor page$/) do
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
  diy = DIY::Onlineforms.new()
  diy.base_field_cat_select value
end

And(/I click ([^']*) UDF on the DIY editor page$/) do |udf_name|
  diy = DIY::Onlineforms.new()
  diy.field_select_click udf_name
end  
  
And(/^I click '([^']*)' on the DIY editor page/) do |value|
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
  diy = DIY::Onlineforms.new()
  diy.diy_save_click
end

And(/I confirm saving my changes$/) do
  diy = DIY::Onlineforms.new()
  diy.diy_save_confirm_click
end

And(/I click Disable for the form titled '([^']*)'$/) do |name|
  diy = DIY::Onlineforms.new()
  diy.donation_page_disable_click name
end

And(/I click Delete for the form titled '([^']*)'$/) do |name|
  sleep 2
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
end

Then(/the Donation Page should no longer show$/) do
  diy = DIY::Onlineforms.new()
  expect(diy.donation_page_present? 'Donation Page').to eq(false)
end

When(/^I click on the link for the form titled Donation Page$/) do
  diy = DIY::Onlineforms.new()
  diy.donation_page_click
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

And (/^I click on the link for the form titled UDF Test Page/) do
  sleep 3
  diy = DIY::Onlineforms.new
  diy.diy_udf_test_url
end

And (/^I click Defined Fields/) do
  diy = DIY::Onlineforms.new
  diy.defined_fields_page
end

And (/^I click Account Settings/) do
  diy = DIY::Onlineforms.new
  diy.account_settings_page
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

And (/^I unmark the checkbox next to Send the donor a confirmation email?/) do
  diy = DIY::Onlineforms.new
  diy.unmark_donor_confirmation
end

And (/^I unmark the checkbox nex to Send your organization a confirmation email?/) do
  diy = DIY::Onlineforms.new
  diy.unmark_org_confirmation
end


When(/^I click on the link for the form titled ([^']*)$/) do |page_name|
  sleep 1
  diy = DIY::Onlineforms.new()
  diy.diy_page_link_click page_name
end
=begin
When(/^I click on the link for the form titled Donation Page$/) do
  diy = DIY::Onlineforms.new()
  diy.diy_page_link 'Donation Page'
end

And (/^I click on the link for the form titled UDF Test Page/) do
  sleep 3
  diy = DIY::Onlineforms.new
  #diy.diy_udf_test_url
  (diy.diy_page_link 'UDF Test Page').when_present.click
end

And (/^I click on the link for the form titled UDF Test 479480/) do
  sleep 3
  diy = DIY::Onlineforms.new
  #diy.diy_udf_test_url
  (diy.diy_page_link 'UDF Test 479480').when_present.click
end
=end
And (/^I click Defined Fields/) do
  diy = DIY::Onlineforms.new
  diy.defined_fields_page
end

And (/^I click Account Settings/) do
  diy = DIY::Onlineforms.new
  diy.account_settings_page
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
    Given I am logged into eTap
    When I click Management on the main menu
    And I click on DIY Forms on the management page
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
    Given I am logged into eTap
    When I click Management on the main menu
    And I click on DIY Forms on the management page
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
    Given I am logged into eTap
    When I click Management on the main menu
    And I click on DIY Forms on the management page
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
  sleep 1

  steps %Q{
    Given I am logged into eTap
    When I click Management on the main menu
    And I click on DIY Forms on the management page
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
  diy = DIY::Onlineforms.new
  diy.org_confirmation_email_checkbox 'disable'
  diy.donor_confirmation_email_checkbox 'disable'
end

And(/^I submit a successful credit card transaction for ([^']*) ([^']*) on page ([^']*)/) do |donor_first_name, donor_last_name, page_name|
  sleep 1

  steps %Q{
      Given I am logged into eTap
      When I click Management on the main menu
      When I click on DIY Forms on the management page
      And I click on the link for the form titled #{page_name}
      And I switch to the new tab in my browser
      And I set Gender to 'Male' on the DIY Donation Page
      And I enter '7' as the amount on the DIY Donation Page
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
      When I click on DIY Forms on the management page
      And I click on the link for the form titled #{page_name}
      And I switch to the new tab in my browser
      And I set Gender to 'Female' on the DIY Donation Page
      And I set Maiden Name to '#{donor_maiden_name}' on the DIY Donation Page
      And I enter '7' as the amount on the DIY Donation Page
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
      And I type '#{constit_name}' into the search field
      And I press Enter on the keyboard
      And I click on Defined Fields from the Role Icon drop down
    }

  defined_fields = Account::DefinedFields.new
  expect(defined_fields.udf_value_by_key 'Gender').to eq(gender)
  expect(defined_fields.udf_value_by_key 'Maiden Name').to eq(maiden_name)
end

And(/^the constituent ([^']*) should be ([^']*)/) do |constit_name, gender|
  steps %Q{
      Given I am logged into eTap
      When I click Accounts on the main menu
      And I type '#{constit_name}' into the search field
      And I press Enter on the keyboard
      And I click on Defined Fields from the Role Icon drop down
    }

  defined_fields = Account::DefinedFields.new
  expect(defined_fields.udf_value_by_key 'Gender').to eq(gender)
end