When(/^I press Enter on the keyboard$/) do
  search = Account::Search.new
  search.press_enter
end

When(/^I close the browser$/) do
  search = Admin::Landing.new
  search.close_browser
end

Given(/^The home page is loaded$/) do
  land = Admin::Landing.new
  #add element to check on landing controller
  #check wait_until_present on said element to determine when the page is loaded
  land.home_page_element.wait_until_present
end

Then(/^I should be taken to the URL '([^']*)'/) do |name|
  land = Admin::Landing.new
  expect(land.browser_popup_url).to eq(name)
  land.browser_popup_close
  land.browser_popup_last.use
end

