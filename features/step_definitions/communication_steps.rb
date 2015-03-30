Given(/^I click Thank You Letters on the Correspondence Categories page/) do
  letter = Communications::Createtemplate.new()
  letter.thank_you_category_click
end

Given(/^I click New Email or Document Template on the Correspondence Category page/) do
  letter = Communications::Createtemplate.new()
  letter.new_template_click
end

Given(/^I rename the existing letter to prevent automation errors/) do
  letter = Communications::Createtemplate.new()
  if(letter.letter_exists? 'Simple Business Letter - Guided Mode')
    letter.letter_click('Simple Business Letter - Guided Mode')
    name = 'Letter'+((0...8).map { (65 + rand(26)).chr }.join)
    letter.new_template_settings_click
    step "I set the Name to '#{name}' on the new Correspondence Template page"
    letter.new_template_save_click
  end
end

Given(/^I set the Name to '([^']*)' on the new Correspondence Template page/) do |name|
  letter = Communications::Createtemplate.new(:new_template_name => name)
  letter.create
end

Given(/^I press Tab on the keyboard/) do
  letter = Communications::Createtemplate.new()
  letter.press_tab
end

Given(/^I click Next on the new Correspondence Template page/) do
  letter = Communications::Createtemplate.new()
  letter.new_template_next_click
end

Given(/^I click Documents on the new Correspondence Template page/) do
  letter = Communications::Createtemplate.new()
  letter.new_template_documents_click
end

Given(/^I click on the Simple Business Letter template/) do
  letter = Communications::Createtemplate.new()
  letter.new_template_simple_business_click
end

Given(/^I click on the image to open the Edit Contents pop up/) do
  letter= Communications::Createtemplate.new()
  letter.new_template_edit_header_click
end

Given(/^I double click the image to open the insert image pop up/) do
  letter = Communications::Createtemplate.new()
  letter.new_template_insert_image_dclick
end

Given(/^I click the browse icon on the insert image pop up on the new Correspondence Template page/) do
  letter = Communications::Createtemplate.new()
  letter.new_template_insert_image_browse_click
end

Given(/^I select a file under browse in resources browser/) do
  letter = Communications::Createtemplate.new()
  letter.set_file_browser_image(Watirmark::Configuration.instance.image_path)
end

Given(/^I click Upload in resources browser/) do
  letter = Communications::Createtemplate.new()
  letter.file_browser_image_upload_click
end

Given(/^I click the uploaded image in resources browser/) do
  letter = Communications::Createtemplate.new()
  letter.file_browser_image_click
end

Given(/^I click Ok in resources browser/) do
  letter = Communications::Createtemplate.new()
  letter.new_template_insert_image_ok_click
end

Given(/^I click Update on the Edit Contents pop up/) do
  letter = Communications::Createtemplate.new()
  #This is being accomplished by key commands for now.  Problem finding the Update button with watir.
  letter.new_template_update_image_click
end

Given(/^I click Quick Formatting on the new Correspondence Template page/) do
  letter = Communications::Createtemplate.new()
  letter.new_template_quick_formatting_click
end

Given(/^I set the font to Comic Sans on the Edit Contents pop up/) do
  letter = Communications::Createtemplate.new()
  letter.font_family_comic_sans_click
end

Given(/^I set the size to 12pt on the Edit Contents pop up/) do
  letter = Communications::Createtemplate.new()
  letter.formats_12pt_click
end

Given(/^I click on the Letter Closing block to open the Edit Contents pop up/) do
  letter = Communications::Createtemplate.new()
  letter.new_template_footer_click
end

Given(/^I change the email address to '([^']*)' in the Edit Contents pop up/) do |text|
  letter = Communications::Createtemplate.new()
  letter.new_template_set_content(text)
end

Given(/^I choose Create Document on Save And Create Document on the new Correspondence Template page/) do
  letter = Communications::Createtemplate.new()
  letter.new_template_select_create
end

# Given(/^I click Save And Create Document on the new Correspondence Template page/) do
#   letter = Communications::Createtemplate.new()
#   letter.new_template_select_create
#   # letter.new_template_save_click
#   sleep(5)
#   letter.new_template_next_click
# end

Given(/^I set the Category to Donation Queries on the Generate Letters page/) do
  letter = Communications::Createtemplate.new()
  letter.gen_letters_set_category_donation_queries
end

Given(/^I set the query to Donations Made Last Year on the Generate Letters page/) do
  letter = Communications::Createtemplate.new()
  letter.gen_letters_set_query_don_last_year
end

Given(/^I click Next on the Generate Letters page/) do
  letter = Communications::Createtemplate.new()
  letter.gen_letters_wait_for_load
  letter.gen_letters_next_click
end

Given(/^I set the document type to PDF on the Generate Letters page/) do
  letter = Communications::Createtemplate.new()
  letter.gen_letters_set_doc_type_pdf
end

Given(/^I set the Grouping to One Document Per Journal Entry on the Generate Letters page/) do
  letter = Communications::Createtemplate.new()
  letter.gen_letters_set_grouping_per_entry
end

Given(/^I set Receiving to Download documents on the Generate Letters page/) do
  letter = Communications::Createtemplate.new()
  letter.gen_letters_set_recieving_download
end

Given(/^I click Run on the Generate Letters page/) do
  letter = Communications::Createtemplate.new()
  letter.gen_letters_wait_for_load
  unless letter.gen_letters_run_enabled?
    sleep(1)
  else
    letter.gen_letters_run_click
  end
  # letter.gen_letters_run_click
end


Given(/^I click Receipts on the Correspondence Categories page/) do
  letter = Communications::Createtemplate.new()
  letter.correspondence_cat_receipts_click
end

Given(/^I delete any existing document to prevent automation errors/) do
  letter = Communications::Createtemplate.new()
  letter.delete_existing_templates 'Receipt w/ Stub (Bottom) - Guided Mode'
end

Given(/^I click on the Receipt w Stub Bottom template on the new Correspondence Template page/) do
  letter = Communications::Createtemplate.new()
  letter.new_template_receipt_stub_bottom_click
end

Given(/^I hover over the Letter Closing block on the new Correspondence Template page/) do
  letter = Communications::Createtemplate.new()
  letter.new_template_footer_hover
end

Given(/^I click the red X to delete the block on the new Correspondence Template page/) do
  letter = Communications::Createtemplate.new()
  letter.new_template_delete_section_click
end

Given(/^I select Receipt Stub Copy from the Add Block list/) do
  letter = Communications::Createtemplate.new()
  letter.new_template_add_block 'Receipt Stub Copy'
end

# Given(/^move the Receipt Stub Copy block above the Receipt Stub block/) do
#   letter = Communications::Createtemplate.new()
#   letter.new_template_move_stub
# end

Given(/^I click on the Body block to open the Edit Contents pop up/) do
  letter = Communications::Createtemplate.new()
  letter.new_template_body_click
end

Given(/^I double click on the Long Salutation merge tag/) do
  letter = Communications::Createtemplate.new()
  letter.new_template_long_salutation_dclick
end

Given(/^I set the Field to Short Salutation/) do
  letter = Communications::Createtemplate.new()
  letter.merge_tags_field_select "Short Salutation"
end

Given(/^I click Insert on the merge tags popup/) do
  letter = Communications::Createtemplate.new()
  letter.merge_tags_insert_click
end

Given(/^I select all the text in the Body/) do
  letter = Communications::Createtemplate.new()
  letter.select_all_text
end

Given(/^I set the font to Times New Roman/) do
  letter = Communications::Createtemplate.new()
  letter.select_font_tnr
end

Given(/^I set the size to 12pt/) do
  letter = Communications::Createtemplate.new()
  letter.select_font_size_12
end

Given(/^I click Update on the editor pop up/) do
  letter = Communications::Createtemplate.new()
  letter.template_pop_up_update_click
end

Given(/^I click Save And Create Document/) do
  letter = Communications::Createtemplate.new()
  letter.new_template_save_and_create_click
end

Given(/^I set the Category to Donation Queries/) do
  letter = Communications::Createtemplate.new()
  letter.new_template_donation_queries_click
end

Given(/^I set the query to Donations Made Last Year/) do
  letter = Communications::Createtemplate.new()
  letter.new_template_query_select
end

Given(/^I click Next on the receipt template page/) do
  letter = Communications::Createtemplate.new()
  letter.new_template_receipt_next_click
end

Given(/^I set the document type to Word on the receipt template page/) do
  letter = Communications::Createtemplate.new()
  letter.new_template_doc_type_word_select
end

Given(/^I set the Grouping to One Document Per Journal Entry on the receipt template page/) do
  letter = Communications::Createtemplate.new()
  letter.new_template_grouping_one_per_set
end