Then(/^I should see the Social Media Finder Settings page$/) do
  # sleep 2
  ncoa = Management::Ncoa.new()
  expect(ncoa.on_ncoa_settings_page?).to eq(true)
end