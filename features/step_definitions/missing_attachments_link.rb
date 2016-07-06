And (/^I click on the '([^']*)' link for a journal entry on the journal page/) do |value|
  journal = Account::Journal.new
  journal.attachment_link_file_count_click(value)
end

Then (/^I verify the size of the first file in the attachments modal is not zero/) do
  journal = Account::Journal.new
  expect(journal.first_attachment_file_size).to eq false
end

And (/^I verify the size of the second file in the attachments modal is not zero/) do
  journal = Account::Journal.new
  expect(journal.second_attachment_file_size).to eq false
end

And (/^I close the attachments modal/) do
  journal = Account::Journal.new
  journal.attachments_modal_close
end

And (/^I click on the Attachment Information section of the gift page/) do
  journal = Account::Journal.new
  journal.attachment_information_section_click
end

And (/^I upload a file to the Attachment Information section/) do
  journal = Account::Journal.new
  journal.upload_attachment_file(Watirmark::Configuration.instance.account_photo_no_ampersand)
  journal.attachments_upload_button_click
end

And (/^I upload a file with an ampersand to the Attachment Information section/) do
  journal = Account::Journal.new
  journal.upload_attachment_file(Watirmark::Configuration.instance.account_photo_yes_ampersand)
  sleep 2
  journal.attachments_upload_button_click
end