
When(/^I type ([^']*) into the mobile search field$/) do |name|
  search = Mobile::AccountFind.new(:search_field=>name)
  search.create
end

When(/^I click Search on Mobile/) do
  search = Mobile::AccountFind.new
  search.mobile_search_click
end

When(/^I select account ([^']*) on Mobile/) do |constituent_name|
  search = Mobile::AccountFind.new
  search.click_account_name constituent_name
end

When (/^I select link ([^']*) on Mobile/) do |link_text|
  account = Mobile::Account.new
  account.click_link link_text
end

When (/^I select the (\d)(?:st|th|nd|rd) journal entry/) do |journal_entry_index|
  journal = Mobile::Journal.new
  journal.click_journal_entry journal_entry_index
end

When (/^([^']*) is not editable/) do |field|
  gift = Mobile::Gift.new
  gift.is_disabled? field
end

When (/^([^']*) should not be empty/) do |field|
  gift = Mobile::Gift.new
  gift.is_emtpy? field
end

When (/^I select the ([^']*) button/) do |button_type|
  gift = Mobile::Gift.new

  if (button_type == 'Save')
    gift.click_save
  elsif (button_type == 'Delete')
    gift.click_delete
  end
end