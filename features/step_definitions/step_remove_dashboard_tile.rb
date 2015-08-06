Given(/^the Campaign Performance tile exists on my Dashboard$/) do

end

When(/^I click the x in the tile$/) do
  hp = Home::Homepage.new
  hp.click_delete_tile
end

And(/^click Ok$/) do

end

Then(/^the tile is removed$/) do

end

And (/^I drag the tile to the left$/) do
  hp = Home::Homepage.new
  hp.move_top_donors_tile
end