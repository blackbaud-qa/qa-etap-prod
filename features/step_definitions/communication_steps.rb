Given(/^There exists an account that has donated this year/) do
  account_name = "Sample Donor"
  step "I click Accounts on the main menu"
  step "I type '#{account_name}' into the search field"
  step "I press Enter on the keyboard"
  search = Account::Search.new
  if not search.account_name_exists? account_name
    step "I click Accounts"
    step "I click on Add Account on the find account screen"
    step "I set Name to 'Sample Donor' on the classic add account page"
    step "I set Sort Name to 'Donor, Sample' on the classic add account page"
    #  step "I click Save And 'Go to Personas'"
    step "I click Save And 'Add Gift/Pledge'"
  else
    step "I type 'Sample Donor' into the dynamic search field"
    search1 = Account::Search.new
    search1.arrow_down
    step "I press Enter on the keyboard"
    step "I click Journal"
    step "select Gift/Pledge from the Add New... drop down menu"
  end

  step "set the date field to '5/30/2014'"
  step "set the Received Amount field to '10.00'"
  step "set the Fund to 'General'"
  step "set the Gift Type to Check"
  step "set the Check Date to '11/30/2090'"
  step "set the Check Number to '879'"
  step "I click Save And 'Edit'"
end

Given(/^there exists an account that has donated in January 2015/) do
  account_name = "Sample Donor"
  step "I click Accounts on the main menu"
  step "I type '#{account_name}' into the search field"
  step "I press Enter on the keyboard"
  search = Account::Search.new
  if not search.account_name_exists? account_name
    step "I click Accounts"
    step "I click on Add Account on the find account screen"
    step "I set Name to 'Sample Donor' on the classic add account page"
    step "I set Sort Name to 'Donor, Sample' on the classic add account page"
    step "I click Save And 'Add Gift/Pledge'"
  else
    step "I type 'Sample Donor' into the dynamic search field"
    search1 = Account::Search.new
    search1.arrow_down
    step "I press Enter on the keyboard"
    step "I click Journal"
    step "select Gift/Pledge from the Add New... drop down menu"
  end

  step "set the date field to '1/5/2015'"
  step "set the Received Amount field to '10.00'"
  step "set the Fund to 'General'"
  step "set the Gift Type to Check"
  step "set the Check Date to '11/30/2090'"
  step "set the Check Number to '879'"
  step "I click Save And 'Edit'"
end

Given(/^click ([^']*) on the Correspondence Categories page/) do |item|
  letter = Communications::Createtemplate.new()
  letter.correspondence_category_click item
end

Given(/^'([^']*)' does not exist/) do |template_name|
  step "I click Communications on the main menu"

  letter = Communications::Createtemplate.new()
  letter.perform_search template_name
  letter.delete_existing_templates template_name
end

Given(/^click New Email or Document Template on the Correspondence Category page/) do
  letter = Communications::Createtemplate.new()
  letter.new_template_click
end

And(/^I click on the '([^']*)' letter template$/) do |name|
  letter = Communications::Createtemplate.new()
  letter.letter_click(name)
  sleep 2
end

Given(/^rename the existing letter to prevent automation errors/) do
  letter = Communications::Createtemplate.new()
  if(letter.letter_exists? 'Simple Business Letter - Guided Mode')
    letter.letter_click('Simple Business Letter - Guided Mode')
    name = 'Letter'+((0...8).map { (65 + rand(26)).chr }.join)
    letter.new_template_settings_click
    step "set the Name to '#{name}' on the new Correspondence Template page"
    letter.new_template_save_click
  end
end

Given(/^(?:I |)verify that the Subject now says '([^']*)'/) do |name|
  letter = Communications::Createtemplate.new()
  subj = letter.subject_text

  expect(subj.value).to eq name
end

Given(/^set the Name to '([^']*)' on the new Correspondence Template page/) do |name|
  letter = Communications::Createtemplate.new(:new_template_name => name)
  letter.create
end

Given(/^(?:I |)press Tab on the keyboard/) do
  letter = Communications::Createtemplate.new()
  letter.press_tab
end

Given(/^I click Next on the new Correspondence Template page$/) do
  letter = Communications::Createtemplate.new()
  letter.new_template_next_click
end

Given(/^(?:I |)click Documents on the new Correspondence Template page/) do
  letter = Communications::Createtemplate.new()
  letter.new_template_documents_click
end

Given(/^(?:I |)click Newsletters on the new Correspondence Template page/) do
  letter = Communications::Createtemplate.new()
  letter.new_template_newsletters_click
end

Given(/^click on the image to open the Edit Contents pop up/) do
  letter= Communications::Createtemplate.new()
  letter.new_template_edit_header_click
end

Given(/^click the icon to open the Insert Edit image pop up/) do
  editor = Communications::CorrespondenceEditor.new()
  editor.click_image_button
end

Given(/^upload an image on my computer/) do
  editor = Communications::CorrespondenceEditor.new()
  editor.click_folder_browse_button
  editor.select_image_from_disk
end

Given(/^click the browse icon on the insert image pop up on the new Correspondence Template page/) do
  letter = Communications::Createtemplate.new()
  letter.new_template_insert_image_browse_click
end

Given(/^select all the text in the template/) do
  editor = Communications::Createtemplate.new()
  editor.new_template_select_all
end

Given(/^select a file under browse in resources browser/) do
  letter = Communications::Createtemplate.new()
  letter.set_file_browser_image(Watirmark::Configuration.instance.image_path)
end

Given(/^click Upload in resources browser/) do
  letter = Communications::Createtemplate.new()
  letter.file_browser_image_upload_click
end

Given(/^click the uploaded image in resources browser/) do
  letter = Communications::Createtemplate.new()
  letter.file_browser_image_click
end

Given(/^click Ok in resources browser/) do
  letter = Communications::Createtemplate.new()
  letter.new_template_insert_image_ok_click
end

Given(/^click Update on the Edit Contents pop up/) do
  letter = Communications::Createtemplate.new()
  #This is being accomplished by key commands for now.  Problem finding the Update button with watir.
  letter.new_template_update_image_click
end

Given(/^click Quick Formatting on the new Correspondence Template page/) do
  letter = Communications::Createtemplate.new()
  letter.new_template_quick_formatting_click
end

Given(/^set the font to Comic Sans on the Edit Contents pop up/) do
  letter = Communications::Createtemplate.new()
  letter.font_family_comic_sans_click
end

And(/^I click Update on the template '([^']*)' pop up$/) do |title|
# And(/^I click Update on the quick formatting Edit Contents pop up$/) do
  letter = Communications::Createtemplate.new()
  letter.template_update_click title
end

Given(/^set font to ([^']*)/) do |font_name|
  letter = Communications::Createtemplate.new()
  letter.select_font_name font_name
end

Given(/^(?:I |)set the font to ([^']*)/) do |font_name|
  letter = Communications::Createtemplate.new()
  letter.select_font_name font_name
end

Given(/^(?:I |)set the font size to ([^']*)/) do |font_size|
  letter = Communications::Createtemplate.new()
  letter.select_font_size font_size
end

And(/^I set the quick formatting font to '([^']*)' on the Edit Contents pop up$/) do |font|
  letter = Communications::Createtemplate.new()
  letter.quick_formatting_font_select font
end

And(/^I set the quick formatting size to '([^']*)' on the Edit Contents pop up$/) do |font|
  letter = Communications::Createtemplate.new()
  letter.quick_formatting_font_size_select font
end

Given(/^set the size to 12pt on the Edit Contents pop up/) do
  letter = Communications::Createtemplate.new()
  letter.formats_12pt_click
end

Given(/^click on the Letter Closing block to open the Edit Contents pop up/) do
  letter = Communications::Createtemplate.new()
  letter.new_template_footer_click
end

Given(/^change the email address to '([^']*)' in the Edit Contents pop up/) do |text|
  letter = Communications::Createtemplate.new()
  letter.new_template_set_content(text)
end

Given(/^choose Create Document on Save And Create Document on the new Correspondence Template page/) do
  letter = Communications::Createtemplate.new()
  letter.new_template_select_create
end

# Given(/^click Save And Create Document on the new Correspondence Template page/) do
#   letter = Communications::Createtemplate.new()
#   letter.new_template_select_create
#   # letter.new_template_save_click
#   sleep(5)
#   letter.new_template_next_click
# end

Given(/^set the Category to Donation Queries on the Generate Letters page/) do
  letter = Communications::Createtemplate.new()
  letter.gen_letters_set_category_donation_queries
end

Given(/^set the query to Donations Made Last Year on the Generate Letters page/) do
  letter = Communications::Createtemplate.new()
  letter.gen_letters_set_query_don_last_year
end

Given(/^click Next on the Generate Letters page/) do
  letter = Communications::Createtemplate.new()
  letter.gen_letters_wait_for_load
  letter.gen_letters_next_click
end

And(/^I click Next on the Mass Email page$/) do
  letter = Communications::Createtemplate.new()
  letter.mass_email_content_wait_for_load
  letter.mass_email_next_click
end

And(/^I click Send on the Mass Email page$/) do
  letter = Communications::Createtemplate.new()
  letter.mass_email_content_wait_for_load
  # sleep 5
  letter.mass_email_send_click
  #adding a wait to give mass email time to process
  sleep 5
end

Given(/^set the document type to PDF on the Generate Letters page/) do
  letter = Communications::Createtemplate.new()
  letter.gen_letters_set_doc_type_pdf
end

Given(/^set the Grouping to One Document Per Journal Entry on the Generate Letters page/) do
  letter = Communications::Createtemplate.new()
  letter.gen_letters_set_grouping_per_entry
end

Given(/^set Receiving to Download documents on the Generate Letters page/) do
  letter = Communications::Createtemplate.new()
  letter.gen_letters_set_recieving_download
end

Given(/^click Run on the Generate Letters page/) do
  letter = Communications::Createtemplate.new()
  letter.gen_letters_wait_for_load
  unless letter.gen_letters_run_enabled?
    sleep(1)
  else
    letter.gen_letters_run_click
  end
  # letter.gen_letters_run_click
end

Given(/^delete any existing document to prevent automation errors/) do
  letter = Communications::Createtemplate.new()
  letter.delete_existing_templates 'Receipt w/ Stub (Bottom) - Guided Mode'
end

=begin
Given(/^(?:I |)click on the Receipt w Stub Bottom template on the new Correspondence Template page/) do
  letter = Communications::Createtemplate.new()
  letter.new_template_receipt_stub_bottom_click
end
=end

Given(/^(?:I |)click on the ([^']*) template/) do |template_name|
  letter = Communications::Createtemplate.new()
  #letter.new_template_simple_business_letter_click
  letter.click_template_name template_name
end

Given(/^I click on the '([^']*)' newsletter template$/) do |name|
  letter = Communications::Createtemplate.new()
  letter.click_newsletter_template_name name
end

Given(/^delete the letter footer/) do
  letter = Communications::CorrespondenceEditor.new()
  sleep 3

  (letter.interact_with_correspondence_section 'guideFooter', 'Delete')

  sleep 1
#    (letter.interact_with_correspondence_section 'guideFooter', 'Delete').when_present.click
#   letter.click_yes

# sleep 3
end

Given(/^(?:I |)click Advanced Mode/) do
  template = Communications::Createtemplate.new()
  template.advanced_editor_click
  sleep 3
end

Given(/^(?:I |)click Advanced Editor Mode/) do
  template = Communications::Createtemplate.new()
  template.advanced_editor_click
end

Given(/^(?:I |)hover over the Letter Closing block on the new Correspondence Template page/) do
  letter = Communications::Createtemplate.new()
  letter.new_template_footer_hover
end

Given(/^(?:I |)click the red X to delete the block on the new Correspondence Template page/) do
  letter = Communications::Createtemplate.new()
  letter.new_template_delete_section_click
end

Given(/^(?:I |)select Receipt Stub Copy from the Add Block list/) do
  letter = Communications::Createtemplate.new()
  letter.new_template_add_block 'Receipt Stub Copy'
  letter.new_template_add_block 'Divider'
end

# Given(/^(?:I |)move the Receipt Stub Copy block above the Receipt Stub block/) do
#   letter = Communications::Createtemplate.new()
#   letter.new_template_move_stub
# end

Given(/^(?:I |)click on the Body block to open the Edit Contents pop up$/) do
  letter = Communications::Createtemplate.new()
  letter.new_template_body_click
end

Given(/^(?:I |)double click on the Long Salutation merge tag/) do
  letter = Communications::Createtemplate.new()
  letter.set_advanced_editor true
  letter.new_template_long_salutation_dclick
end

Given(/^(?:I |)set the Field to Short Salutation/) do
  sleep 0.25
  letter = Communications::Createtemplate.new()
  letter.merge_tags_field_select "Short Salutation"
end

Given(/^(?:I |)click Insert on the merge tags popup/) do
  letter = Communications::Createtemplate.new()
  letter.merge_tags_insert_click
end

Given(/^(?:I |)select all the text in the Body/) do
  letter = Communications::Createtemplate.new()
  letter.select_all_text
end

Given(/^(?:I |)click Update on the editor pop up/) do
  letter = Communications::Createtemplate.new()
  letter.template_pop_up_update_click
end

Given(/^(?:I |)click Save And Create Document/) do
  letter = Communications::Createtemplate.new()
  letter.new_template_save_and_create_click
end

#Given(/^(?:I |)set the Category to Base/) do
#  letter = Communications::Createtemplate.new()
#  letter.new_template_base_category_click
#end

Given(/^(?:I |)set the Category to ([^']*)/) do |cat_name|
  letter = Communications::Createtemplate.new()
  letter.new_template_category_click cat_name
end

Given(/^(?:I |)set the template query to '([^']*)'/) do |query_name|
  letter = Communications::Createtemplate.new()
  letter.new_template_query_select query_name
end

Given(/^(?:I |)click Next on the receipt template page/) do
  letter = Communications::Createtemplate.new()
  letter.new_template_receipt_next_click
end

Given(/^(?:I |)set the Grouping to One Document Per Journal Entry/) do
  letter = Communications::Createtemplate.new()
  letter.new_template_grouping_one_per_set
end

Given(/^(?:I |)set Receiving to Download documents/) do
  letter = Communications::Createtemplate.new()
  letter.download_docs_radio_select
end

Given(/^(?:I |)update the letter's email address from '([^']*)' to '([^']*)'/) do |old_email, new_email|
  letter = Communications::Createtemplate.new()
  letter.update_email_address old_email, new_email
end

Given(/^(?:I |)click Run/) do
  letter = Communications::Createtemplate.new()
  letter.gen_letters_wait_for_load
  unless letter.gen_letters_run_enabled?
    sleep(1)
  else
    letter.gen_letters_run_click
  end
end

Given(/^(?:I |)name the file '([^']*)'/) do
  letter = Communications::Createtemplate.new()
  letter.new_template_run_click
end
=begin
Given(/^(?:I |)set the document type to Word/) do
  letter = Communications::Createtemplate.new()
  letter.new_template_doc_type_word_select
end

Given(/^(?:I |)set the document type to Word on the receipt template page/) do
  letter = Communications::Createtemplate.new()
  letter.new_template_doc_type_word_select
end
=end

Given(/^(?:I |)set the document type to ([^']*)/) do |doc_type|
  letter = Communications::Createtemplate.new()
  letter.new_template_doc_type_select doc_type
end

def get_download_location
  b = Page.browser.driver.capabilities[:browser_name]

  if b == "chrome"
    # Trying to open this in a second tab to prevent issues with the main tab
    step "I open a new tab in my browser"
    step "I switch to the new tab in my browser"

    Page.browser.goto "chrome://settings"

    sleep 2
    Page.browser.iframe(:name => 'settings').execute_script('arguments[0].scrollIntoView();', Page.browser.iframe(:name => 'settings').a(:id => 'advanced-settings-expander'))
    Page.browser.iframe(:name => 'settings').a(:id => 'advanced-settings-expander').when_present.click

    # return the download path. Should handle both Linux & Windows cases
    Page.browser.iframe(:name => 'settings').execute_script('arguments[0].scrollIntoView();', Page.browser.iframe(:name => 'settings').text_field(:id => 'downloadLocationPath'))
    retval = Page.browser.iframe(:name => 'settings').text_field(:id => 'downloadLocationPath').value

    step "I close the current tab"
    return retval
  elsif b == "firefox"
    #TODO: how to get default download location?
  elsif b == "ie"
    #TODO: how to get default download location?
  end

end

Then(/^the Word document should contain as many pages as there are new journal entries/) do
  letter = Communications::Createtemplate.new()
  #entry_count = letter.journal_entry_count.to_i
  entry_count = 45

  sleep 7
  dwnld_path = get_download_location
  docx_file = dwnld_path + "\\Document.docx"

  # We insert an image into each letter that pushes the
  #  page size to 2 pages. Need to double the entry_count:
  contents = File.read docx_file, :encoding => 'iso-8859-1'
  metadata = Yomu.read :metadata, contents
  expect(metadata['Page-Count']).to eq(entry_count * 2)

  File.delete docx_file
  expect(File.exists? docx_file).to be false
end

Then(/^the PDF document should contain as many pages as there are new journal entries/) do
  letter = Communications::Createtemplate.new()
  entry_count = letter.journal_entry_count.to_i

  sleep 7
  dwnld_path = get_download_location
  pdf_file = dwnld_path + "\\Document.pdf"

  reader = PDF::Reader.new pdf_file
  expect(reader.page_count).to eq(entry_count)

  File.delete pdf_file
  expect(File.exists? pdf_file).to be false
end

And(/^I delete the existing Document.pdf$/) do
  letter = Communications::Createtemplate.new()

  dwnld_path = get_download_location
  pdf_file = dwnld_path + "\\Document.pdf"
  # puts pdf_file
  begin
    reader = PDF::Reader.new pdf_file

    File.delete pdf_file
  rescue
    #file not found - no action needed
  end
  expect(File.exists? pdf_file).to be false
end

And(/^I delete the existing Document.docx$/) do

  letter = Communications::Createtemplate.new()

  dwnld_path = get_download_location
  docx_file = dwnld_path + "\\Document.docx"

  begin
    File.delete docx_file

  rescue
    #file not found - no action needed
  end
  expect(File.exists? docx_file).to be false

end

Then(/^The Word document should be generated$/) do
  letter = Communications::Createtemplate.new()

  dwnld_path = get_download_location
  docx_file = dwnld_path + "\\Document.docx"

  expect(File.exists? docx_file).to be true

end

Then(/^The PDF document should be generated$/) do
  letter = Communications::Createtemplate.new()

  sleep 5
  dwnld_path = get_download_location
  pdf_file = dwnld_path + "\\Document.pdf"

  expect(File.exists? pdf_file).to be true

end

Then(/^I click Word under the Preview menu on the letter template page$/) do
  letter = Communications::Createtemplate.new()
  letter.preview_word_click
end

And(/^I click PDF under the Preview menu on the letter template page$/) do
  letter = Communications::Createtemplate.new()
  letter.preview_pdf_click
end

And(/^I click Email under the Preview menu on the letter template page$/) do
  letter = Communications::Createtemplate.new()
  letter.preview_email_click
end

And(/^I enter the email address '([^']*)'$/) do |address|
  letter = Communications::Createtemplate.new(:preview_email_address=>address)
  letter.create
end

And(/^I click Send on the letter template page$/) do
  letter = Communications::Createtemplate.new()
  letter.preview_email_send_click
end

And(/^I click '([^']*)' under '([^']*)' on the email templates page$/) do |link, name|
  letter = Communications::Createtemplate.new()
  letter.create_documents_click(link,name)
end

And(/^I mark the checkbox next to Create a Journal Contact for Each Account$/) do
  letter = Communications::Createtemplate.new()
  letter.create_journal_contact_set
end

And(/^I set the Subject to '([^']*)' on the Generate Letters page$/) do |subject|
  letter = Communications::Createtemplate.new(:journal_contact_subject=>subject)
  letter.create
end

And(/^I set the Method to '([^']*)' on the Generate Letters page$/) do |method|
  letter = Communications::Createtemplate.new()
  letter.gen_letters_method_select method
end

And(/^a contact dated for today with the subject '([^']*)' should be added to '([^']*)' journal page$/) do |document, name|
  step "I type '" + name + "' into the dynamic search field"
  step "I press Enter on the keyboard"
  step "I click on '" + name + "' on the accounts page"
  step "I click Journal"

  journal = Account::Journal.new
  expect(journal.journal_table_contains? document).to eq(true)

end

And(/^I select Basic Mass Email on the Mass Email page$/) do
  letter = Communications::Createtemplate.new()
  letter.basic_mass_email_set
end

And(/^I click Send a Mass Email on the Mass Email page$/) do
  letter = Communications::Createtemplate.new()
  letter.send_mass_email_section_click
end

And(/^I set the Name to '([^']*)' on the Mass Email page$/) do |name|
  sleep 1
  letter = Communications::Createtemplate.new(:mass_update_name=>name)
  letter.create
end

And(/^I set both Email fields to '([^']*)' on the Mass Email page$/) do |email|
  letter = Communications::Createtemplate.new(:mass_update_email=>email,:mass_update_reply=>email)
  letter.create
end

And(/^I mark the checkbox next to Create a Journal Contact for All Recipients on the Mass Email page$/) do
  letter = Communications::Createtemplate.new()
  letter.mass_email_create_contact_set
end

And(/^I set the Subject to '([^']*)' on the Mass Email page$/) do |subject|
  letter = Communications::Createtemplate.new(:mass_update_subject=>subject)
  letter.create
end

And(/^I set the Method to '([^']*)' on the Mass Email page$/) do |method|
  letter = Communications::Createtemplate.new()
  letter.mass_email_method_select method
end

And(/^I select Advanced Mass Email on the Mass Email page$/) do
  letter = Communications::Createtemplate.new()
  letter.advanced_mass_email_set
end

And(/^I click on the Body block to open the Edit Contents pop up in the standard editor$/) do
  sleep 3
  letter = Communications::Createtemplate.new()
  letter.standard_editor_body_click
end

And(/^I delete all of the text in the Edit Contents pop up$/) do
  letter = Communications::Createtemplate.new()
  letter.standard_editor_delete_text
end

And(/^I click Insert Letter Widget in the Edit Contents pop up$/) do
  letter = Communications::Createtemplate.new()
  letter.standard_editor_insert_letter_click
  sleep 2
end

And(/^I select the Entry List widget$/) do
  letter = Communications::Createtemplate.new()
  letter.select_entry_list_click
end

And(/^I click insert on the Letter Widgets pop up$/) do
  letter = Communications::Createtemplate.new()
  letter.letter_widgets_insert_click
end

And(/^I double click the Entry List widget to edit it in the Edit Contents pop up$/) do
  letter = Communications::Createtemplate.new()
  letter.standard_editor_entry_list_dclick
end

And(/^I click Add Another Column on the Letter Widgets pop up$/) do
  letter = Communications::Createtemplate.new()
  letter.letter_widgets_add_column_click
end

And(/^I set the category to '([^']*)' on the Letter Widgets pop up$/) do |category|
  letter = Communications::Createtemplate.new()
  letter.letter_widgets_category_select category
end

And(/^I set the field to '([^']*)' on the Letter Widgets pop up$/) do |field|
  letter = Communications::Createtemplate.new()
  letter.letter_widgets_field_select field
end

And(/^I click Update on the Edit Contents pop up$/) do
  letter = Communications::Createtemplate.new()
  letter.edit_contents_update_click
end

And(/^I set Grouping to One Document Per Account$/) do
  letter = Communications::Createtemplate.new()
  letter.gen_letters_set_grouping_per_account
end

And(/^I delete all the text in the advanced editor on the template page$/) do
  letter = Communications::Createtemplate.new()
  letter.advanced_editor_delete_text
end

And(/^I click Insert Letter Widget in the advanced editor on the template page$/) do
  letter = Communications::Createtemplate.new()
  letter.advanced_editor_insert_letter_click
end

And(/^I double click the Entry List widget to edit it in the advanced editor$/) do
  letter = Communications::Createtemplate.new()
  letter.advanced_editor_entry_list_dclick
end