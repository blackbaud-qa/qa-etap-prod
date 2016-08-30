And(/^I can navigate to page 2 at the bottom of the query preview page/) do
  journal = Account::Journal.new
  journal.navigate_to_query_page_two
end

And(/^I can navigate to page 1 at the bottom of the query preview page/) do
  journal = Account::Journal.new
  journal.navigate_to_query_page_one
end


And(/^I zoom out in the browser/) do
  journal = Account::Journal.new
  journal.zoom_out
  sleep 2
end

And(/^I scroll to the bottom of the query preview page$/) do
  journal = Account::Journal.new
  journal.query_scroll_bottom
  journal.press_page_down
end

And(/^I reset the zoom to 100%/) do
  journal = Account::Journal.new
  journal.zoom_reset
  sleep 2
end

And(/^I click Add an Account on the Account drop down menu/) do
  journal = Account::Journal.new
  journal.click_add_an_account_button_in_menu
end

And(/^I add an account to test the Journal Load More feature/) do
  step "I set the Name Format to 'Individual' on the add account page"
  step "I set the Title to 'Mr.' on the add account page"
  step "I set the First Name to 'Bruce' on the add account page"
  step "I set the Last Name to 'Robinson' on the add account page"
  step "I set Address Lines to '2479 Lamberts Branch Road' on the classic add account page"
  step "I set City to 'Fort Lauderdale' on the classic add account page"
  step "I set State to 'FL' on the classic add account page"
  step "I set Postal Code to '33301' on the classic add account page"
  step "I set the UDF 'Account Type' dropdown to 'Individual' in the UDF section on the classic add account page"
  step "I click Save And 'Go to Journal' on the add account page"
end

And(/^I import 26 gifts to the newly created account/) do
  step "I click Management on the main menu"
  step "I click on Import on the management menu"
  step "I click 'Standard eTapestry Imports' on the Imports screen"
  step "I click New Import on the Standard eTapestry Imports screen"
  step "I set the Name to 'Importing 26 Gifts' on the Import screen"
  step "I choose the 'Importing 26 Gifts' file on the Import screen"
  step "I set the Select the Type of Information to Import to 'Account Information with Single Gift' on the Import screen"
  step "I set the name format to 'Assign Individual to all accounts' on the Import screen"
  step "I set the Country to 'United States' on the Import screen"
  step "I click Next on the Import screen"
  step "I click Import Another eTapestry Field on the Import screen"
  step "I click 'Check Date' on the Import Field pop up"
  step "I click 'Check Number' on the Import Field pop up"
  step "I click 'Close' on the Import Field pop up"
  step "I click on the 'First Name' mapping icon for names on the Import screen"
  step "I click 'First' from my file"
  step "I the X on the Import mapping pop up"
  step "I click on the 'Last Name' mapping icon for names on the Import screen"
  step "I click 'Last' from my file"
  step "I the X on the Import mapping pop up"
  step "I set the 'Account Name' dropdown to 'Use auto-generated Data Entry Rules' on the Import Screen"
  step "I set the 'Sort Name' dropdown to 'Use auto-generated Data Entry Rules' on the Import Screen"
  step "I mark the Individual fields checkbox next to 'Account Name' on the import screen"
  step "I click on the 'Date' mapping icon on the Import screen"
  step "I click 'Date' from my file"
  step "I the X on the Import mapping pop up"
  step "I click on the 'Received' mapping icon on the Import screen"
  step "I click 'Received' from my file"
  step "I the X on the Import mapping pop up"
  step "I click on the 'Fund' mapping icon on the Import screen"
  step "I click 'Fund' from my file"
  step "I the X on the Import mapping pop up"
  step "I click on the 'Gift Type' mapping icon on the Import screen"
  step "I click 'Gift Type' from my file"
  step "I the X on the Import mapping pop up"
  step "I click on the 'Check Date' mapping icon on the Import screen"
  step "I click 'Check Date' from my file"
  step "I the X on the Import mapping pop up"
  step "I click on the 'Check Number' mapping icon on the Import screen"
  step "I click 'Check Number' from my file"
  step "I the X on the Import mapping pop up"
  step "I click Next on the Import screen"
  step "I click Next on the Import screen"
  step "I click Next on the Import step 4"
  step "I should see the Import Summary page"
  step "I should see 'Accounts Created 0' on the Import Summary page"
  step "I should see 'Accounts Modified 26' on the Import Summary page"
  step "I should see 'Accounts Skipped 0' on the Import Summary page"
  step "I should see 'Journal Entries Created 26' on the Import Summary page"
  step "I click Next on the Import screen"
end

And(/^I click Load More at the bottom of the Journal page/) do
  journal = Account::Journal.new
  journal.journal_click_load_more
end

And (/^I should see a journal entry dated '([^']*)' on the journal page/) do |value|
  journal = Account::Journal.new
  expect(journal.journal_page_journal_entry_date(value)).to eq(true)
end

And (/^I should not see a journal entry dated '([^']*)' on the journal page/) do |value|
  journal = Account::Journal.new
  expect(journal.journal_page_journal_entry_date(value)).to eq(false)
end