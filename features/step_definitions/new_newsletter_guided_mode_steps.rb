And(/^click Email Templates$/) do
  template = Communications::Createtemplate.new()
  template.email_template
end
=begin
And(/^click New Email or Document Template$/) do
  template = Communications::Createtemplate.new()
  template.new_email_document
end
=end
And(/^set the Name to '([^']*)'$/) do |name|
  letter = Communications::Createtemplate.new(:new_template_name => name)
  letter.create
end

And(/^click Tab$/) do
  letter = Communications::Createtemplate.new()
  letter.press_tab
end


And(/^I click Next$/) do
  letter = Communications::Createtemplate.new()
  letter.click_next_on_nav
end

=begin
And(/^click on the Pistachio Goodness template$/) do
  letter = Communications::Createtemplate.new()
  letter.new_pistachio_template
end
=end

And(/^hover over the Article block$/) do
  letter = Communications::Createtemplate.new()
  letter.hover_over_article_block
end


And(/^click on the image to open the Edit Contents pop up$/) do
  letter = Communications::Createtemplate.new()
  letter.edit_first_article_block
end

And(/^change the title to '([^']*)'$/) do |text|
  letter = Communications::Createtemplate.new()
  letter.new_newsletter_set_title(text)
end

# And(/^change the subtitle to '([^']*)'$/) do |text|
#   letter = Communications::Createtemplate.new()
#   letter.new_newsletter_set_content(text)
# end

# And(/^click Update$/) do
#   letter = Communications::Createtemplate.new()
#   # letter.new_template_update_image_click
#   letter.new_newsletter_content_update
# end

And(/^click Quick Formatting$/) do
  letter = Communications::Createtemplate.new()
  letter.new_template_quick_formatting_click
end

And(/^set the Article Title font to Verdana$/) do
  letter = Communications::Createtemplate.new()
#  letter.font_family_verdana_click
  letter.quick_formatting_text_style "Article Title", "Verdana"
end

And(/^set the size to 16pt$/) do
  letter = Communications::Createtemplate.new()
  #letter.article_font_size_16
  letter.quick_formatting_text_size "Article Title", "16pt"
end


And(/^click Update$/) do
  letter = Communications::Createtemplate.new()
  # letter.quick_formatting_update
  #this is not the correct way of clicking the update button
  #I am using Lance's way for now because I am unable to find the Update button on the pop up window
  # letter.new_template_update_image_click
  letter.new_newsletter_content_update
end

# And(/^click Update button$/) do
#   letter = Communications::Createtemplate.new()
#   letter.quick_formatting_update
# end

And(/^update the text styles$/) do
  letter = Communications::Createtemplate.new()
  letter.click_quick_format_update_button
end

And(/^click on the Quick Links block to open the Edit Contents pop up$/) do
  letter = Communications::Createtemplate.new()
  letter.quick_links_edit
end

And(/^delete the four default links$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

And(/^type in '([^']*)'$/) do |text|
  letter = Communications::Createtemplate.new()
  letter.quick_links_content_update(text)
end

And(/^highlight '([^']*)'$/) do |text|
  letter = Communications::Createtemplate.new()
  letter.quick_links_content_update(text)
end

And(/^click Save And Mass Email$/) do
  letter = Communications::Createtemplate.new()
  letter.save_and_mass_email
end


And(/^select Advanced Mass Email$/) do
  letter = Communications::Createtemplate.new()
  letter.select_advanced_mass_email
end

