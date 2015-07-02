And(/^select Split Transaction from the Add New\.\.\. drop down menu$/) do
  landing = Account::Journal.new
  landing.select_split_transaction
end

And(/^set the Received Amount Field to '([^']*)'$/) do |amount|
  search = Giving::GiftPledge.new(:split_received_field=>amount)
  search.create
end

And(/^set the Number Of Segments to '(\d+)'$/) do |segments|
  search = Giving::GiftPledge.new(:segment=>segments)
  search.create
end

And(/^click Add Segments$/) do
  search = Giving::GiftPledge.new
  search.click_add_segments
end

And(/^I set the Received amount on Segment 1 to '([^']*)'/) do |amount|
  gift = Giving::GiftPledge.new(:segment_one_received_amount=>amount)
  gift.create
end

  And(/^I set the Fund on Segment 1 to '([^']*)'/) do |name|
    gift = Giving::GiftPledge.new
    gift.set_fund_segment_one name
  end

  And(/^I set the Campaign on Segment 1 to '([^']*)'/) do |name|
    gift = Giving::GiftPledge.new
    gift.set_campaign_segment_one name
  end

  And(/^I set the Approach on Segment 1 to '([^']*)'/) do |name|
    gift = Giving::GiftPledge.new
    gift.set_approach_segment_one name
  end

And(/^I set the Received amount on Segment 2 to '([^']*)'/) do |amount|
  gift = Giving::GiftPledge.new(:segment_two_received_amount=>amount)
  gift.create
end

And(/^I set the Fund on Segment 2 to '([^']*)'/) do |name|
  gift = Giving::GiftPledge.new
  gift.set_fund_segment_two name
end

And(/^I set the Campaign on Segment 2 to '([^']*)'/) do |name|
  gift = Giving::GiftPledge.new
  gift.set_campaign_segment_two name
end

And(/^I set the Approach on Segment 2 to '([^']*)'/) do |name|
  gift = Giving::GiftPledge.new
  gift.set_approach_segment_two name
end

And(/I set the Gift Type on Segment 1 to '([^']*)'/) do |value|
  gift = Giving::GiftPledge.new
  gift.set_gift_type_segment_one value
end

And(/^I set the Check Date on Segment 1 to '([^']*)'/) do |date|
  gift = Giving::GiftPledge.new(:segment_one_check_date=>date)
  gift.create
end

And(/^I set the Check Number on Segment 1 to '([^']*)'/) do |value|
  gift = Giving::GiftPledge.new(:segment_one_check_number=>value)
  gift.create
end

And(/^I set the Tribute Information on Segment 1 to '([^']*)'$/) do |tribute|
  gift = Giving::GiftPledge.new(:popup_search_text=>tribute)
  gift.tribute_bar_click_segment_one
  gift.tribute_icon_click_segment_one
  gift.create
  gift.click_find
  gift.popup_click_link_by_text(tribute)
end

And(/^I set the Soft Credit Information on Segment 1 to '([^']*)'$/) do |soft_credit|
  gift = Giving::GiftPledge.new(:popup_search_text=>soft_credit)
  gift.tribute_bar_click_segment_one
  gift.soft_credit_icon_click_segment_one
  gift.create
  gift.click_find
  gift.popup_click_link_by_text(soft_credit)
end

And(/^I set the Soft Credit Amount on Segment 1 to '([^']*)'/) do |amount|
  gift = Giving::GiftPledge.new(:segment_one_soft_credit_amount=>amount)
  gift.create
end

And(/^I set the Soft Credit Information on Segment 2 to '([^']*)'$/) do |soft_credit|
  gift = Giving::GiftPledge.new(:popup_search_text=>soft_credit)
  gift.tribute_bar_click_segment_two
  gift.soft_credit_icon_click_segment_two
  gift.create
  gift.click_find
  gift.popup_click_link_by_text(soft_credit)
end

And(/^I set the Soft Credit Amount on Segment 2 to '([^']*)'/) do |amount|
  gift = Giving::GiftPledge.new(:segment_two_soft_credit_amount=>amount)
  gift.create
end

And(/^I set the '([^']*)' UDF on Segment 2 to '([^']*)'/) do |udf,value|
  gift = Giving::GiftPledge.new
  gift.user_defined_fields_bar_segment_two
  gift.click_segment_two_udf(udf)
  gift.set_segment_two_udf_value(udf, value)
end

And(/^I click Expand All Segments/) do
  gift = Giving::GiftPledge.new
  gift.expand_all_segments
end

And(/^I click Delete on the split transaction page/) do
  gift = Giving::GiftPledge.new
  gift.delete_split_transaction
end

And(/^I mark the checkbox next to Split Transaction on the journal page/) do
  gift = Giving::GiftPledge.new
  gift.mark_split_transaction_box
end

And (/the Received amount on Segment 1 should be set to '([^']*)'/) do |amount|
  gift = Giving::GiftPledge.new
  expect(gift.segment_one_received_amount).to eq(amount)
end

And (/the Fund on Segment 1 should be set to '([^']*)'/) do |value|
  gift = Giving::GiftPledge.new
  expect(gift.segment_one_fund).to eq(value)
end

And (/the Campaign on Segment 1 should be set to '([^']*)'/) do |value|
  gift = Giving::GiftPledge.new
  expect(gift.segment_one_campaign).to eq(value)
end

And (/the Approach on Segment 1 should be set to '([^']*)'/) do |value|
  gift = Giving::GiftPledge.new
  expect(gift.segment_one_approach).to eq(value)
end

And (/the Gift Type on Segment 1 should be set to '([^']*)'/) do |value|
  gift = Giving::GiftPledge.new
  expect(gift.segment_one_gift_type).to eq(value)
end

And (/the Check Date on Segment 1 should be set to '([^']*)'/) do |value|
  gift = Giving::GiftPledge.new
  expect(gift.segment_one_check_date).to eq(value)
end