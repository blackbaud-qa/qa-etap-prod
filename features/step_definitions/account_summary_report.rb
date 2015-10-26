And (/^I run the Generate Account Summary Report from the account's Home page/) do
  run_report = Reports::Standardreports.new
  run_report.generate_account_summary_report
end

And (/^there should not be an uploaded photo in the Picture Tile/) do
  run_report = Reports::Standardreports.new
  expect(run_report.no_home_page_photo?).to eq(true)
end

And (/^the Account Summary Report for '([^']*)' should display on screen/) do |name|
  run_report = Reports::Standardreports.new
  expect(run_report.account_summary_report_results? name).to eq(true)
end

And (/^I click '([^']*)' in the Picture Tile/) do |link|
  run_report = Reports::Standardreports.new
  run_report.picture_tile_link(link)
end

And (/^I set the Account Image to one without an & in the name/) do
  run_report = Reports::Standardreports.new
  run_report.set_account_image_without_ampersand
end

And (/^I set the Account Image to one with an & in the name/) do
  run_report = Reports::Standardreports.new
  run_report.set_account_image_with_ampersand
end