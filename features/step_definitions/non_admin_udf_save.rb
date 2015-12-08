And (/^I click '([^']*)' on the System Defined Fields page/) do |value|
  advsecurity = Admin::Systemdefinedfields.new
  advsecurity.system_defined_field_value value
end

And (/^I add the Security Right value '([^']*)'/) do |value|
  advsecurity = Admin::Systemdefinedfields.new(:new_security_rights_value => value)
  if !advsecurity.is_admins_only_present?
    advsecurity.create
    advsecurity.add_value_button
    end
end

And (/^I click the '([^']*)' category on the User Defined Fields page/) do |value|
  advsecurity = Admin::Systemdefinedfields.new
  advsecurity.edit_udf_category_page value
end

And (/^I add the User Defined Field '([^']*)' with '([^']*)' Security Rights Applied/) do |value, sticky|
  advsecurity = Admin::Systemdefinedfields.new
  if !advsecurity.udf_field_name_present?(value)
    advsecurity.new_defined_field
    step "I set the udf name to '#{value}'"
    step "I set the Data Type to 'Number'"
    advsecurity.udf_next_step
    advsecurity.udf_field_application_transactions
    advsecurity.udf_next_step
    advsecurity.udf_enable_mobile
    advsecurity.udf_next_step
    advsecurity.udf_display_type_text_box
    advsecurity.udf_next_step
    step "I set the Security Rights to '#{sticky}'"
    advsecurity.save_and_finish_udf_page
  end
end

And (/^I set the udf name to '([^']*)'/) do |value|
  advsecurity = Admin::Systemdefinedfields.new(:new_udf_field_name => value)
  advsecurity.create
end

And (/^I set the Data Type to '([^']*)'/) do |value|
  advsecurity = Admin::Systemdefinedfields.new
  advsecurity.udf_set_data_type(value)
end

And (/^I set the Security Rights to '([^']*)'/) do |sticky|
  advsecurity = Admin::Systemdefinedfields.new
  advsecurity.security_rights_expand
  advsecurity.udf_security_rights(sticky)
end

And (/^I click on Add Account on the pop up find account screen/) do
  advsecurity = Admin::Systemdefinedfields.new
  advsecurity.find_account_pop_up_add_account
end

And (/^I click Save on the pop up find account screen/) do
  advsecurity = Admin::Systemdefinedfields.new
  advsecurity.find_account_pop_up_save
end

And (/^I set the Name Format to '([^']*)' on the pop up find account screen/) do |value|
  advsecurity = Admin::Systemdefinedfields.new
  advsecurity.popup_name_format_select(value)
end

And (/^I set the Title to '([^']*)' on the pop up find account screen/) do |value|
  advsecurity = Admin::Systemdefinedfields.new
  advsecurity.popup_title_select(value)
end

And (/^I set the First Name to '([^']*)' on the pop up find account screen/) do |value|
  advsecurity = Admin::Systemdefinedfields.new(:popup_first_name => value)
  advsecurity.create
end

And (/^I set the Last Name to '([^']*)' on the pop up find account screen/) do |value|
  advsecurity = Admin::Systemdefinedfields.new(:popup_last_name => value)
  advsecurity.create
end

And (/^I set the multi-select UDF '([^']*)' to '([^']*)' on the gift screen/) do |udf, value|
  advsecurity = Admin::Systemdefinedfields.new
  advsecurity.click_gift_udf(udf)
  advsecurity.set_multi_select_udf_value(udf, value)
end

And (/^I click the '([^']*)' on the transaction page/) do |value|
  advsecurity = Admin::Systemdefinedfields.new
  advsecurity.udf_show_hide(value)
end

And (/^I set the single-select UDF '([^']*)' to '([^']*)' on the gift screen/) do |udf, value|
  advsecurity = Admin::Systemdefinedfields.new
  advsecurity.click_gift_udf(udf)
  advsecurity.set_single_select_udf_value(udf, value)
end