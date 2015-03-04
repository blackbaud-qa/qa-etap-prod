And (/^I click Journal on the Gail Burch account/) do
  gift = Giving::GiftPledge.new
  gift.journal_link_click
end

And(/^I click on the Add New... drop down menu/) do
  gift = Giving::GiftPledge.new
  gift.add_new_drop_down_click
end

And(/^I select GiftPledge from the Add New... drop down menu/) do
  gift = Giving::GiftPledge.new
  gift.gift_pledge_click
end

And(/^And I set the date to Today on the new pledge page/) do

end