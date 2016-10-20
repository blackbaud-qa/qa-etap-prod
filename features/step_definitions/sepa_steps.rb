And(/^I enter '([^']*)' in the Federal ID field$/) do |id|
  org = Management::MyOrg.new(:federal_id=>id)
  org.create
end

And(/^I click Save and Go to Personas on the My Organization page$/) do
  org = Management::MyOrg.new()
  org.save_and_personas_click
end

Then(/^'([^']*)' should save in the Federal ID field$/) do |id|
  org = Management::MyOrg.new()
  expect(org.federal_id).to eq('123')
end

And(/^I click on Preferences on the My Organization page$/) do
  org = Management::MyOrg.new()
  org.my_org_prefs_click
end

And(/^I leave the IBAN field empty$/) do
  org = Management::MyOrg.new(:IBAN=>'')
  org.create
end

And(/^I leave the BIC field empty$/) do
  org = Management::MyOrg.new(:BIC=>'')
  org.create
end

And(/^I live the Cancellation Terms field empty$/) do
  org = Management::MyOrg.new(:cancellation_terms=>'')
  org.create
end

And(/^I leave the Recurring Transaction Description field empty$/) do
  org = Management::MyOrg.new(:rec_trans_desc=>'')
  org.create
end

Then(/^I should see the '([^']*)' error$/) do |error|
  sleep 2
  org = Management::MyOrg.new()
  begin
  expect(org.error_includes? error).to eq(true)
  rescue Exception => e
    step "I should close the javascript popup"
    raise e
  end
end

And(/^I should close the javascript popup$/) do
  org = Management::MyOrg.new()
  org.error_close
end

When(/^I enter '([^']*)' for the IBAN field$/) do |field|
  org = Management::MyOrg.new(:IBAN=>field)
  org.create
end

When(/^I enter '([^']*)' for the BIC field$/) do |field|
  org = Management::MyOrg.new(:BIC=>field)
  org.create
end

When(/^I enter '([^']*)' for the Cancellation Terms field$/) do |field|
  org = Management::MyOrg.new(:cancellation_terms=>field)
  org.create
end

When(/^I enter '([^']*)' for the Export Batch Size field$/) do |field|
  org = Management::MyOrg.new(:export_batch_size=>field)
  org.create
end

When(/^I enter '([^']*)' for the Bank Account Number field$/) do |field|
  org = Management::MyOrg.new(:bank_account_number=>field)
  org.create
end

When(/^I enter '([^']*)' for the Recurring Transaction Description field$/) do |field|
  org = Management::MyOrg.new(:rec_trans_desc=>field)
  org.create
end

When(/^I enter '([^']*)' for the Organization Short Name field$/) do |field|
  org = Management::MyOrg.new(:org_short_name=>field)
  org.create
end

Then (/^'([^']*)' should save in the IBAN field$/) do |field|
  org = Management::MyOrg.new()
  expect(org.iban_field).to eq(field)
end

Then (/^'([^']*)' should save in the BIC field$/) do |field|
  org = Management::MyOrg.new()
  expect(org.bic_field).to eq(field)
end

Then (/^'([^']*)' should save in the Cancellation Terms field$/) do |field|
  org = Management::MyOrg.new()
  expect(org.cancellation_terms_field).to eq(field)
end

Then (/^'([^']*)' should save in the Export Batch Size field$/) do |field|
  org = Management::MyOrg.new()
  expect(org.export_batch_size_field).to eq(field)
end

Then (/^'([^']*)' should save in the Bank Account Number field$/) do |field|
  org = Management::MyOrg.new()
  expect(org.bank_account_number_field).to eq(field)
end

Then (/^'([^']*)' should save in the Recurring Transaction Description field$/) do |field|
  org = Management::MyOrg.new()
  expect(org.rec_trans_desc_field).to eq(field)
end

Then (/^'([^']*)' should save in the Organization Short Name field$/) do |field|
  org = Management::MyOrg.new()
  expect(org.org_short_name_field).to eq(field)
end

Given(/^I go to the journal of account '([^']*)'$/) do  |account|
  step "I click Accounts on the main menu"
  step "I type '" + account + "' into the dynamic search field"
  step "I press Enter on the keyboard"
  step "I click on '" + account + "' in the search results"
  step "I click Journal"
end

Then(/^I should be taken the the New Recurring Gift Schedule screen$/) do
  gift = Giving::GiftPledge.new
  expect(gift.on_recurring_gift_page?).to eq(true)
end

And(/^the process type should default to SEPA$/) do
  gift = Giving::GiftPledge.new
  expect(gift.process_type_sepa_set?)
end

And(/^I populate the date field with yesterday$/) do
  gift = Giving::GiftPledge.new(:new_pledge_date => Date.yesterday.strftime('%x'))
  gift.create
end

And(/^I populate the IBAN field with '([^']*)'$/) do |value|
  gift = Giving::GiftPledge.new(:IBAN=>value)
  gift.create
end

And(/^I populate the Mandate Signature Date field with today$/) do
  gift = Giving::GiftPledge.new(:mandate_sig_date=>Date.today.strftime('%x'))
  gift.create
end

Then(/^the BIC field should be set to '([^']*)'$/) do |value|
  gift = Giving::GiftPledge.new
  expect(gift.journal_BIC).to eq(value)
end

And (/^I set the Recurring Installment Amount to '([^']*)'$/) do |amount|
  gift = Giving::GiftPledge.new(:recurring_installment_amount => amount)
  gift.create
end

Then(/^a unique mandate ID should appear$/) do
  gift = Giving::GiftPledge.new
  expect(gift.mandate_id_generated?).to eq(true)
end

When(/^I click next on the SEPA banking export screen$/) do
  sleep 3
  export = Reports::Sepa.new
  export.next_click
end

Then(/^I should see the '([^']*)' pop up error$/) do |error|
  export = Reports::Sepa.new
  expect(export.pop_up_error_includes? error).to eq(true)
end

Then(/^I should close the pop up error$/) do
  export = Reports::Sepa.new
  export.pop_up_ok_click
end

And(/^I select Retries Only for the Export Type field$/) do
  export = Reports::Sepa.new
  export.retries_only_select
end

And(/^I select Standard for the Export Method field$/) do
  export = Reports::Sepa.new
  export.standard_set
end

And(/^I select Live for the Export Mode field$/) do
  export = Reports::Sepa.new
  export.live_set
end

And(/^I select Today for the Process Date field$/) do
  export = Reports::Sepa.new(:process_date => Date.today.strftime('%x'))
  export.create
end

And (/^I select Tomorrow for the Process Date field$/) do
  export = Reports::Sepa.new(:process_date => Date.tomorrow.strftime('%x'))
  export.create
end

And (/^I select Regularly Scheduled Direct Debits for the Export Type field$/) do
  export = Reports::Sepa.new
  export.reg_sched_dd_select
end

And(/^I select Custom for the Export Method field$/) do
  export = Reports::Sepa.new
  export.custom_select
end

And(/^I select '([^']*)' for the Category field$/) do |category|
  export = Reports::Sepa.new
  export.custom_category_select category
end

And(/^I select '([^']*)' for the Query field$/) do |query|
  export = Reports::Sepa.new
  export.query_select query
end

And(/^I select This Month for the Gift Date Range field$/) do
  export = Reports::Sepa.new
  export.this_month_gift_set
end

And(/^I set First and One Off for the Gift Status field$/) do
  export = Reports::Sepa.new
  export.first_one_off_set
end

And(/^I see '([^']*)' listed under Exportable Gifts$/) do  |name|
  sleep 2
  export = Reports::Sepa.new
  expect(export.export_data_contains? name).to eq(true)
end