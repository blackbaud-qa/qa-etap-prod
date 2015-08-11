When(/^I click NCOA on the Management page$/) do
  ncoa = Management::Ncoa.new()
  ncoa.management_ncoa_click
end

Then(/^I should see the NCOA Settings page$/) do
  ncoa = Management::Ncoa.new()
  expect(ncoa.on_ncoa_settings_page?).to eq(true)
end