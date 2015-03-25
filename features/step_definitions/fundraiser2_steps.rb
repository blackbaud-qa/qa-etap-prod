And(/^I click on the Fundraiser titled QA Fundraiser 1 on the Fundraisers page/) do
  fund = Management::Fundraisers.new()
  fund.fundraiser_page_title_click
end

And (/^I change the template to Chisel on the existing Fundraiser page/) do
  fund = Management::Fundraisers.new()
  fund.existing_fundraiser_change_template_chisel
end

And (/^I set the Main page Text to say '([^']*)' on the new Fundraiser page/) do |text|
  fund = Management::Fundraisers.new()
  fund.set_main_page_text(text)
end

And(/^I click Align Left in the Main page Text box on the new Fundraiser page/) do
  fund = Management::Fundraisers.new()
  fund.main_page_text_align_left_click
end

And(/^I set the status to Disabled on the new Fundraiser page/) do
  fund = Management::Fundraisers.new()
  fund.select_status_click
  fund.select_status_disabled_click
end



