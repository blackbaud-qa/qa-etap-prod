And(/^I click Fundraisers on the Management menu$/) do
  fund = Management::Fundraisers.new()
  fund.management_fundraisers_click
  # pending # express the regexp above with the code you wish you had
end

And(/^I ensure there are no active Fundraisers$/) do
  fund = Management::Fundraisers.new()
  if(!fund.new_fund_setup_exists?)
    step "I sort by Status on the Fundraisers Page"
    while(fund.active_fundraiser_exists?)
      step "I click on the Fundraiser titled QA Fundraiser 1 on the Fundraisers page"
      step "I set the status to Disabled on the new Fundraiser page"
      step "I click Save and Finish on the new Fundraiser page"
      step "I sort by Status on the Fundraisers Page"
    end
  end

end

And(/^I click New Fundraiser on the Fundraisers menu/) do
  fund = Management::Fundraisers.new()
  fund.fundraiser_new_fundraiser_click
end

And(/^I set the date to Today on the new Fundraiser page/) do
  fund = Management::Fundraisers.new(:new_fund_date => Date.today.strftime('%x'))
  fund.create
end

And(/^I set Name to '([^']*)' on the new Fundraiser page/) do |name|
  fund = Management::Fundraisers.new(:new_fund_name => name)
  fund.create
end

And(/^I set Status to Active on the new Fundraiser page/) do
  fund = Management::Fundraisers.new()
  fund.set_new_fundraiser_status_active
end

And(/^I set the Goal to '([^']*)' on the new Fundraiser page/) do |amount|
  fund = Management::Fundraisers.new(:new_fund_goal => amount)
  fund.create
end

And(/^I click Next on the new Fundraiser page/) do
  fund = Management::Fundraisers.new()
  fund.new_fundraiser_next_click
end

And (/^I set the Site Name on the new Fundraiser page/) do
  name = 'fundraiser'+((0...8).map { (65 + rand(26)).chr }.join)
  fund = Management::Fundraisers.new(:new_fund_sitename => name)
  fund.create
end

And (/^I set Administrative Contact Name to '([^']*)' on the new Fundraiser page/) do |contactname|
  fund = Management::Fundraisers.new(:new_fund_contactname => contactname)
  fund.create
end

And (/^I set Administrative Contact Email to '([^']*)' on the new Fundraiser page/) do |contactemail|
  fund = Management::Fundraisers.new(:new_fund_contactemail => contactemail)
  fund.create
end

And (/^I set the template to Float on the new Fundraiser page/) do
  fund = Management::Fundraisers.new()
  fund.new_fundraiser_set_template_float
end

And (/^I highlight the Main page Text on the new Fundraiser page/) do
  fund = Management::Fundraisers.new()
  fund.select_main_page_text
end

And(/^I delete the Main Page Text on the new Fundraiser page/) do
  fund = Management::Fundraisers.new()
  fund.delete_main_page_text
end

And(/^I set the Main Page Text to say '([^']*)' on the new Fundraiser page/) do |text|
fund = Management::Fundraisers.new()
fund.set_main_page_text(text)
end

And(/^I choose B for Bold in the Main page Text box on the new Fundraiser page/) do
  fund = Management::Fundraisers.new()
  fund.main_page_text_bold_click
end

And(/^I click Align Center in the Main page Text box on the new Fundraiser page/) do
  fund = Management::Fundraisers.new()
  fund.main_page_text_align_center_click
end

And(/^I set the Recommended Team Goal to '([^']*)' on the new Fundraiser page/) do |team_goal|
  fund = Management::Fundraisers.new(:new_fund_team_goal => team_goal)
  fund.create
end

And(/^I set the Recommended Individual Goal to '([^']*)' on the new Fundraiser page/) do |individual_goal|
  fund = Management::Fundraisers.new(:new_fund_individual_goal => individual_goal)
  fund.create
end

And(/^I choose Base:Gender in the Field Name under Add Question on the new Fundraiser page/) do
  fund = Management::Fundraisers.new()
  fund.field_name_click
  fund.field_name_base_gender_click
end

And(/^I set the checkbox next to Required on the new Fundraiser page/) do
  fund = Management:: Fundraisers.new()
  fund.required_check_box_click
end

And(/^I set the display text to say '([^']*)' on the new Fundraiser page$/) do |display_text|
  fund = Management::Fundraisers.new(:new_fund_display_text => display_text)
  fund.create
end

And(/^I click Add on the new Fundraiser page/) do
  fund = Management::Fundraisers.new()
  fund.new_fundraiser_add_click
end

And(/^I set the Fee Name to '([^']*)' on the new Fundraiser page/) do |fee_name|
  fund = Management::Fundraisers.new(:new_fund_fee_name => fee_name)
  fund.create
end

And(/^I set the Fee Amount to '([^']*)' on the new Fundraiser page/) do |fee_amount|
  fund = Management::Fundraisers.new(:new_fund_fee_amount => fee_amount)
  fund.create
end

And(/^I choose General in the Fund drop down under Add Fee on the new Fundraiser page/) do
  fund = Management::Fundraisers.new()
  fund.fee_level_fund_click
  fund.fee_level_fund_general_click
end

And(/^I click Add under Registration Fee Levels on the new Fundraiser page/) do
  fund = Management::Fundraisers.new()
  fund.new_fundraiser_add_fee_level_click
end

And(/^I set the second Fee Name to '([^']*)' on the new Fundraiser page/) do |second_fee_name|
  fund = Management::Fundraisers.new(:new_fund_second_fee_name => second_fee_name)
  fund.create
end

And(/^I set the second Fee Amount to '([^']*)' on the new Fundraiser page/) do |second_fee_amount|
  fund = Management::Fundraisers.new(:new_fund_second_fee_amount => second_fee_amount)
  fund.create
end

And(/^I choose General as the second Fund in the Fund drop down on the new Fundraiser page/) do
  fund = Management::Fundraisers.new()
  fund.second_fee_level_fund_click
  fund.second_fee_level_fund_general_click
end

And(/^I set the Fund to be applied to Donations to General on the new Fundraiser page/) do
  fund = Management::Fundraisers.new()
  fund.second_fee_level_fund_click
  fund.second_fee_level_fund_general_click
end

And(/^I choose General as the Fund to be applied to Donations on the new Fundraiser page/) do
  fund = Management::Fundraisers.new()
  fund.applied_to_donations_fund_click
  fund.applied_to_donations_fund_general_click
end

And(/^I click Save and Finish on the new Fundraiser page/) do
  fund = Management::Fundraisers.new()
  fund.new_fundraiser_save_and_finish_click
end

And(/^I sort by Status on the Fundraisers Page/) do
  fund = Management::Fundraisers.new()
  fund.sort_status_click
  # sleep 3
end

And(/^I click on the QA Fundraiser 1 url on the Fundraiser page/) do
  fund = Management::Fundraisers.new()
  fund.fundraiser_page_url_click
end

And(/^the QA Fundraiser url should load in a new browser window/) do
  fund = Management::Fundraisers.new()
  expect( fund.fundraiser_on_fund_page?).to eq(true)
end

And(/^I should be able to see the changed text '([^']*)'$/) do |text|
  fund = Management::Fundraisers.new()
  expect(fund.fundraiser_changes_made? text).to eq(true)
end

