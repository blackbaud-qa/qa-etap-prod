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