And (/^I click Recently Viewed Accounts/) do
  dashboard = Home::Homepage.new
  dashboard.dashboard_tile_add_recently_viewed_accounts_click
end

And (/^I should see the Recently Viewed Accounts tile/) do
  dashboard = Home::Homepage.new
  expect(dashboard.dashboard_tile_add_recently_viewed_accounts_tile).to eq(true)
end

And (/^I click the X on the Recently Viewed Accounts tile/) do
  dashboard = Home::Homepage.new
  dashboard.dashboard_tile_remove_recently_viewed_accounts_click
end

Then (/^I should not see the Recently Viewed Accounts tile in the right hand column on the Dashboard/) do
  dashboard = Home::Homepage.new
  expect(dashboard.dashboard_tile_add_recently_viewed_accounts_tile).to eq(false)
end