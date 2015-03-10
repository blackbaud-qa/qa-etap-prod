And(/^I click on the Fundraiser titled QA Fundraiser 1 on the Fundraisers page/) do
  fund = Management::Fundraisers.new()
  fund.fundraiser_page_title_click
end

And (/^I change the template to Chisel on the existing Fundraiser page/) do
  fund = Management::Fundraisers.new()
  fund.existing_fundraiser_change_template_chisel
end

And(/^I click in the Main Page text area after the word fundraiser on the existing Fundraiser page/) do
  fund = Management::Fundraisers.new()
  fund.existing_fundraiser_after_main_page_text_click
end

And (/^I add '([^']*)' in the Main Page text on the existing Fundraiser page/) do |text|
  fund = Management::Fundraisers.new()
  fund.add_main_page_text(text)
end


