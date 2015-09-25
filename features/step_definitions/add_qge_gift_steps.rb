And(/^I click Search for an Account$/) do
  gift = Giving::GiftPledge.new
  gift.search_for_an_account_click
end

And(/^type '([^']*)' into the search field in popup$/) do |name|
  gift = Giving::GiftPledge.new(:popup_search_text=>name)
  gift.create
end

And(/^click Find in popup$/) do
  gift = Giving::GiftPledge.new
  gift.click_find
end

And(/^select '([^']*)' in popup$/) do |name|
  gift = Giving::GiftPledge.new
  gift.popup_click_link_by_text name
end

And(/^set the Fund to '([^']*)'$/) do |value|
  gift = Giving::GiftPledge.new
  gift.set_fund value
end

And(/^set the Campaign to '([^']*)'$/) do |value|
  gift = Giving::GiftPledge.new
  gift.set_campaign value
end

And(/^set the Approach to '([^']*)'$/) do |value|
  gift = Giving::GiftPledge.new
  gift.set_approach value
end

And(/^set the Gift Type to '([^']*)'$/) do |value|
  gift = Giving::GiftPledge.new
  gift.set_gift_type(value)
end

And(/^I set the Tribute Information to '([^']*)'$/) do |tribute|
  landing = Giving::GiftPledge.new(:popup_search_text=>tribute)
  landing.tribute_bar_click
  landing.tribute_icon_click
  landing.create
  landing.click_find
  landing.popup_click_link_by_text(tribute)
end

And(/^I set the Soft Credit Information to '([^']*)'$/) do |soft_credit|
  landing = Giving::GiftPledge.new(:popup_search_text=>soft_credit)
  landing.tribute_bar_click
  landing.soft_credit_icon_click
  landing.create
  landing.click_find
  landing.popup_click_link_by_text(soft_credit)
end

And(/^I click Save And '([^']*)'$/) do |value|
  gift = Giving::GiftPledge.new
  gift.set_save_and(value)
  gift.click_save_and
end

And(/^I click Save And to see the error$/) do
  # begin
    gift = Giving::GiftPledge.new
    gift.click_save_for_error
  # rescue
    #expected error...
  # end

end

And(/^set the Account Number field to '([^']*)'$/) do |value|
  gift = Giving::GiftPledge.new(:account_number=>value)
  gift.create
end

Then (/^the gift should save properly on '([^']*)''s account$/) do |name|
  gift = Giving::GiftPledge.new
  expect(gift.journal_gift_persona).to eq(name)
end

Then (/the date should be set to '([^']*)'$/) do |date|
  gift = Giving::GiftPledge.new
  expect(gift.journal_gift_date).to eq(date)
end

Then (/the Received Amount should be set to '([^']*)'$/) do |amount|
  gift = Giving::GiftPledge.new
  expect(gift.journal_gift_received_amount).to eq(amount)
end

And (/^the Non-Deductible Amount should be set to the '([^']*)'$/) do |amount|
  gift = Giving::GiftPledge.new
  expect(gift.journal_gift_non_deductible_amount).to eq(amount)
end

Then (/the Fund should be set to '([^']*)'$/) do |fund|
  gift = Giving::GiftPledge.new
  expect(gift.journal_gift_fund).to eq(fund)
end

Then (/the Campaign should be set to '([^']*)'$/) do |campaign|
  gift = Giving::GiftPledge.new
  expect(gift.journal_gift_campaign).to eq(campaign)
end

Then (/the Approach should be set to '([^']*)'$/) do |approach|
  gift = Giving::GiftPledge.new
  expect(gift.journal_gift_approach).to eq(approach)
end

Then (/the Gift Type should be set to '([^']*)'$/) do |type|
  gift = Giving::GiftPledge.new
  expect(gift.journal_gift_gift_type_selected?(type)).to eq(true)
end

Then (/the Check Date should be set to '([^']*)'$/) do |date|
  gift = Giving::GiftPledge.new
  expect(gift.journal_gift_check_date).to eq(date)
end

Then (/the Check Number should be set to '([^']*)'$/) do |number|
  gift = Giving::GiftPledge.new
  expect(gift.journal_gift_check_number).to eq(number)
end

Then(/^I click the Tribute bar$/) do
  gift = Giving::GiftPledge.new
  gift.tribute_bar_click
end

Then (/the Tribute Information should be set to '([^']*)'$/) do |name|
  gift = Giving::GiftPledge.new
  expect(gift.journal_gift_tribute).to eq(name)
end

Then (/the Soft Credit Information should be set to '([^']*)'$/) do |name|
  gift = Giving::GiftPledge.new
  expect(gift.journal_gift_soft_credit).to eq(name)
end

Then (/the Soft Credit Amount should be set to '([^']*)'$/) do |amount|
  gift = Giving::GiftPledge.new
  expect(gift.journal_gift_soft_credit_amount).to eq(amount)
end

