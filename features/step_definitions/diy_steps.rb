When(/^I click on DIY Forms on the management page/) do
  diy = Diy::Onlineforms.new()
  diy.management_page_diy_click
end

When(/^I click Create a Page/) do
  diy = Diy::Onlineforms.new()
  diy.create_a_page_click
end

When(/^I click Online Giving Page/) do
  diy = Diy::Onlineforms.new()
  diy.choose_online_giving_click
end

When(/^I select the Embeddable template/) do
  diy = Diy::Onlineforms.new()
  diy.choose_embedded_template_click
end

When(/^I click Next on the DIY template page/) do
  diy = Diy::Onlineforms.new()
  diy.template_next_click
end

When(/^I set the Name to '([^']*)' on the DIY settings page/) do |name|
  diy = Diy::Onlineforms.new(:diy_settings_name=>name)
  diy.create
end

When(/^I set the Title to '([^']*)' on the DIY settings page/) do |title|
  diy = Diy::Onlineforms.new(:diy_settings_title=>title)
  diy.create
end

When(/^I set the URL to '([^']*)' on the DIY settings page/) do |url|
  diy = Diy::Onlineforms.new(:diy_settings_url=>url)
  diy.create
end

When(/^I set the From what address\? to '([^']*)' on the DIY settings page/) do |email|
  diy = Diy::Onlineforms.new(:diy_settings_from_address=>email)
  diy.create
end

When(/^I set the From Subject to '([^']*)' on the DIY settings page/) do |subject|
  diy = Diy::Onlineforms.new(:diy_settings_from_subject=>subject)
  diy.create
end

When(/^I set the To what address\(es\)\? to '([^']*)' on the DIY settings page/) do |email|
  diy = Diy::Onlineforms.new(:diy_settings_to_address=>email)
  diy.create
end

When(/^I set the Subject to '([^']*)' on the DIY settings page/) do |subject|
  diy = Diy::Onlineforms.new(:diy_settings_to_subject=>subject)
  diy.create
end

When(/^I set the Fund to '([^']*)' on the DIY settings page/) do |fund|
  diy = Diy::Onlineforms.new()
  diy.fund_click
  diy.choose_fund(fund)
  diy.fund_update_click
end

When(/^I click Submit on the DIY settings page/) do
  diy = Diy::Onlineforms.new()
  diy.settings_click_submit
end

When(/^I click Go Live on the DIY editor page$/) do
  diy = Diy::Onlineforms.new()
  diy.go_live_click
end

And(/^I click Yes, Go Live! on the DIY editor page$/) do
  diy = Diy::Onlineforms.new()
  diy.go_live_confirm_click
end

And(/^I click Edit for the form titled '([^']*)'$/) do |page|
  diy = Diy::Onlineforms.new()
  diy.edit_form(page)
end

And(/^I click Edit Style on the DIY editor page$/) do
  diy = Diy::Onlineforms.new()
  diy.edit_style_click
end

And(/^I click Swap Template on the DIY editor page$/) do
  diy = Diy::Onlineforms.new()
  diy.swap_template_click
end

And(/^I select the Steel template on the DIY editor page$/) do
  diy = Diy::Onlineforms.new()
  diy.choose_steel_template_click
end

And(/^I click Swap To This Template on the DIY editor page$/) do
  diy = Diy::Onlineforms.new()
  diy.swap_to_this_template_click
end

And(/^I change the Title font to Comic Sans 20pt on the DIY editor page$/) do
  diy = Diy::Onlineforms.new()
  diy.title_font_comic_sans_set
  diy.title_font_20pt_set
end

And(/^I change the Main Background to #EEEEEE on the DIY editor page$/) do
  diy = Diy::Onlineforms.new(:background_color=>'#EEEEEE')
  diy.create
end

And(/^I click Update under the Main Background on the DIY editor page$/) do
  diy = Diy::Onlineforms.new()
  diy.background_update_click
end

And(/^I click Update on the DIY editor page$/) do
  diy = Diy::Onlineforms.new()
  diy.edit_update_click
end

And(/^I click Settings on the DIY editor page$/) do
  diy = Diy::Onlineforms.new()
  diy.edit_settings_click
end

And(/^I click Change Selected Funds on the DIY settings page$/) do
  diy = Diy::Onlineforms.new()
  diy.change_funds_click
end


And(/^I click Unrestricted on the DIY settings page$/) do
  diy = Diy::Onlineforms.new()
  diy.unrestricted_fund_click
end

And(/^I click Update on the DIY funds page$/) do
  diy = Diy::Onlineforms.new()
  diy.funds_update_click
end

And(/^I click Select a Campaign on the DIY settings page$/) do
  diy = Diy::Onlineforms.new()
  diy.select_campaign_click
end

And(/^I click Annual on the DIY settings page$/) do
  diy = Diy::Onlineforms.new()
  diy.campaign_annual_click
end

And(/^I click Select an Approach on the DIY settings page$/) do
  diy = Diy::Onlineforms.new()
  diy.select_approach_click
end

And(/^I click Unsolicited on the DIY settings page$/) do
  diy = Diy::Onlineforms.new()
  diy.approach_unsolicited_click
end

And(/^I click Update on the DIY settings page$/) do
  diy = Diy::Onlineforms.new()
  diy.settings_update_click
end

And(/I hover over the Donation Amount on the DIY editor page$/) do
  diy = Diy::Onlineforms.new()
  diy.donation_section_hover
end

And(/I click the pencil icon that appears on the DIY editor page$/) do
  diy = Diy::Onlineforms.new()
  diy.edit_section_click
end

And(/I mark the checkbox next to Include Specific Giving Levels on the DIY editor page$/) do
  diy = Diy::Onlineforms.new()
  diy.include_specific_check
end

And(/I click Update on the DIY gift info page$/) do
  diy = Diy::Onlineforms.new()
  diy.gift_update_click
end

And(/I click Add Item on the DIY editor page$/) do
  diy = Diy::Onlineforms.new()
  diy.add_item_click
end

And(/I select Add Image on the DIY editor page$/) do
  diy = Diy::Onlineforms.new()
  diy.add_image_click
end

And(/I double-click on the default image on the DIY editor page$/) do
  # step "I double click the image to open the insert image pop up"
  diy = Diy::Onlineforms.new()
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
  diy = Diy::Onlineforms.new()
  diy.add_fields_click
end

And(/I select Base for the field category on the DIY editor page$/) do
  diy = Diy::Onlineforms.new()
  diy.base_field_cat_select
end

And(/I click Gender on the DIY editor page$/) do
  diy = Diy::Onlineforms.new()
  diy.field_select_gender_click
end

And(/I click Update on the Add Fields page$/) do
  diy = Diy::Onlineforms.new()
  diy.fields_update_click
end

And(/I select Add Text on the DIY editor page$/) do
  diy = Diy::Onlineforms.new()
  diy.add_text_click
end

And(/I change the default text on the DIY editor page$/) do
  diy = Diy::Onlineforms.new()
  diy.update_default_text
end

And(/I click Update on the Add Text page$/) do
  diy = Diy::Onlineforms.new()
  diy.update_text_click
end

And(/I click Save on the DIY editor page$/) do
  diy = Diy::Onlineforms.new()
  diy.diy_save_click
end

And(/I confirm saving my changes$/) do
  diy = Diy::Onlineforms.new()
  diy.diy_save_confirm_click
end

And(/I click Disable for the form titled Donation Page$/) do
  diy = Diy::Onlineforms.new()
  diy.donation_page_disable_click
end

And(/I click Delete for the form titled Donation Page$/) do
  sleep 2
  diy = Diy::Onlineforms.new()
  diy.donation_page_delete_click
end

And(/^I click Yes, Disable the Page$/) do
  diy = Diy::Onlineforms.new()
  diy.donation_page_disable_confirm_click
end

And(/I click Yes, Delete the Page$/) do
  diy = Diy::Onlineforms.new()
  diy.donation_page_delete_confirm_click
end

Then(/the Donation Page should no longer show$/) do
  diy = Diy::Onlineforms.new()
  expect(diy.donation_page_present? 'Donation Page').to eq(false)
end