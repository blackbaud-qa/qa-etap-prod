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
  expect(dashboard.dashboard_tiles_recently_present?).to eq(false)
end

And (/^I click on 2 Equal Columns/) do
  dashboard = Home::Homepage.new
  dashboard.choose_two_equal_column_layout
end

And (/^I should see the homepage in 2 columns/) do
  dashboard = Home::Homepage.new
  expect(dashboard.two_same_column_size).to eq(2)
end

And(/^I click '([^']*)' on the Campaign Performance tile/) do |value|
  sleep 10
  dashboard = Home::Homepage.new
  dashboard.click_link_on_campaign_performance_tile(value)
end

And (/^I set the Date Range to '([^']*)' on the Campaign Performance tile/)do |value|
  dashboard = Home::Homepage.new
  dashboard.set_date_campaign_performance_tile(value)
end

And (/^I set the Start Date to '([^']*)' and I set the End Date to '([^']*)'/) do |first, second|
  dashboard = Home::Homepage.new(:set_camp_tile_start_date => first)
  dashboard.create
  dashboard = Home::Homepage.new(:set_camp_tile_end_date => second)
  dashboard.create
end

And (/^I click Update on the Campaign Performance tile/) do
  dashboard = Home::Homepage.new
  dashboard.click_update_camp_performance_tile

  dashboard.wait_for_campaign_performance_change_link
end

And (/^I should see '([^']*)' on the full Campaign Performance report/) do |message|
  dashboard = Home::Homepage.new
  expect(dashboard.camp_perform_full_report_screen? message).to eq(true)
end

Then (/^I should see '([^']*)' on the Campaign Performance tile/) do |message|
  sleep 3
  dashboard = Home::Homepage.new
  expect(dashboard.camp_perform_date_range_description? message).to eq(true)
end