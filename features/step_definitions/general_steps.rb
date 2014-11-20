When(/^I press Enter on the keyboard$/) do
  search = Account::Search.new
  search.press_enter
end

When(/^I close the browser$/) do
  search = Admin::Landing.new
  search.close_browser
end