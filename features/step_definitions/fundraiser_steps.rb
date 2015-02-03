And(/^I click Fundraisers on the Management menu$/) do
  fund = Management::Fundraisers.new()
  fund.management_fundraisers_click
  # pending # express the regexp above with the code you wish you had
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

And (/^I set the Site Name to '([^']*)' on the new Fundraiser page/) do |sitename|
  fund = Management::Fundraisers.new(:new_fund_sitename => sitename)
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
  fund.field_name_combo_click
  fund.field_name_base_gender_click
end