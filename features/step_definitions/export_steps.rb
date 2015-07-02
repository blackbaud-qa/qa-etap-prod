And(/^I click on the report format$/) do
  download = Reports::Editreportscategory.new
  download.select_download_format_options
end

And(/^I click on download as '([^']*)'$/) do |format|
  download = Reports::Editreportscategory.new
  download.select_download_format(format)
end

And(/^I click on '([^']*)'$/) do |format|
  download = Reports::Editreportscategory.new
  download.select_download_format(format)
end

Then(/^I should see the report downloaded as a '([^']*)' file$/) do |format|
  download = Reports::Editreportscategory.new
  download.downloaded_as_pdf?(format)
end

Then(/^I should see the report in the dropbox as a '([^']*)' file$/) do |format|
  download = Reports::Editreportscategory.new
  download.in_dropbox_as?(format)
end

Then(/^I should see the report downloaded$/) do
  download = Reports::Editreportscategory.new
  download.report_generating?
end

Then(/^I should see the report has been sent$/) do
  download = Reports::Editreportscategory.new
  download.report_sent_as_email?
end
