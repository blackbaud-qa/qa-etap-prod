And(/^I click on download as '([^']*)' for the report format$/) do |type|
  download = Reports::Editreportscategory.new
  download.download_as(type)
end
