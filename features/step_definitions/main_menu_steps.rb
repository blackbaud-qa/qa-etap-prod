
When(/^I click Home on the main menu$/) do
  landing = Admin::Landing.new
  landing.home_click
  sleep 3
end

#Home DropDown
When(/^I click on the Home drop down$/) do
  sleep 5
  landing = Admin::Landing.new
  landing.home_dropdown_click
end

When(/^I click on Go to Home on the home menu$/) do
  landing = Admin::Landing.new
  landing.home_dd_go_home_click

end

When(/^I click on Manage User Preferences on the home menu$/) do
  landing = Admin::Landing.new
  landing.home_dd_manage_preferences_click
end

When(/^I click on Find an Account on the home menu$/) do
  landing = Admin::Landing.new
  landing.home_dd_find_account_click
end

When(/^I click on Add a Gift or Pledge on the home menu$/) do
  landing = Admin::Landing.new
  landing.home_dd_add_gift_click
end

When(/^I click on Manage Communications on the home menu$/) do
  landing = Admin::Landing.new
  landing.home_dd_manage_comms_click
end

When(/^I click on Learn Best Practices on the home menu$/) do
  landing = Admin::Landing.new
  landing.home_dd_best_practices_click
end

When(/^I click on Give Feedback on Idea Bank on the home menu$/) do
  landing = Admin::Landing.new
  landing.home_dd_give_feedback_click
end

When(/^I click on Help on the home menu$/) do
  landing = Admin::Landing.new
  landing.home_dd_help_click
end

When(/^I click on Open My Scheduled Items on the home menu$/) do
  landing = Admin::Landing.new
  landing.home_dd_scheduled_items_click
end

When(/^I click on Open My Drop Box on the home menu$/) do
  landing = Admin::Landing.new
  landing.home_dd_dropbox_click
end

When(/^I click on Getting Started Wizard on the home menu$/) do
  landing = Admin::Landing.new
  landing.home_dd_wizard_click
end

When(/^I click Accounts on the main menu$/) do
  landing = Admin::Landing.new
  landing.accounts_click
end

#Accounts DropDown
When(/^I click on the Accounts drop down$/) do
  landing = Admin::Landing.new
  landing.accounts_dropdown_click
end

When(/^I click on Find an Account on the accounts menu$/) do
  landing = Admin::Landing.new
  landing.accounts_dd_find_account_click
end

When(/^I click on Add an Account on the accounts menu$/) do
  landing = Admin::Landing.new
  landing.accounts_dd_add_account_click
end

When(/^I click Giving on the main menu$/) do
  landing = Admin::Landing.new
  landing.giving_click
end

When(/^I click on the Giving drop down$/) do
  landing = Admin::Landing.new
  landing.giving_dropdown_click
end

When(/^I click on Add a Gift or Pledge on the giving menu$/) do
  landing = Admin::Landing.new
  landing.giving_dd_add_gift_click
end

When(/^I click on Import Gifts on the giving menu$/) do
  landing = Admin::Landing.new
  landing.giving_dd_import_gifts_click
end

When(/^I click on Giving Dynamics Report on the giving menu$/) do
  landing = Admin::Landing.new
  landing.giving_dd_giving_dynamics_click
end

When(/^I click on Top Donor Report on the giving menu$/) do
  landing = Admin::Landing.new
  landing.giving_dd_top_donor_click
end

When(/^I click on Pledge Report on the giving menu$/) do
  landing = Admin::Landing.new
  landing.giving_dd_pledge_report_click
end

When(/^I click on Fund Activity Summary on the giving menu$/) do
  landing = Admin::Landing.new
  landing.giving_dd_fund_activity_click
end

When(/^I click on Donor Cash Projection on the giving menu$/) do
  landing = Admin::Landing.new
  landing.giving_dd_donor_cash_click
end

When(/^I click on Prospect Research on the giving menu$/) do
  landing = Admin::Landing.new
  landing.giving_dd_prospect_research_click
end

When(/^I click on Planned Giving Calcs on the giving menu$/) do
  landing = Admin::Landing.new
  landing.giving_dd_planned_giving_click
end

When(/^I click on Cultivation Tools on the giving menu$/) do
  landing = Admin::Landing.new
  landing.giving_dd_cultivation_tools_click
end

When(/^I click Communications on the main menu$/) do
  landing = Admin::Landing.new
  landing.communications_click
end

#Communications DropDown
When(/^I click on the Communications drop down$/) do
  landing = Admin::Landing.new
  landing.communications_dropdown_click
end

When(/^I click on Manage Communications on the communications menu$/) do
  landing = Admin::Landing.new
  landing.communications_dd_manage_comms_click
end

When(/^I click on Add a New Category on the communications menu$/) do
  landing = Admin::Landing.new
  landing.communications_add_category_click
end

When(/^I click on Constant Contact on the communications menu$/) do
  landing = Admin::Landing.new
  landing.communications_constant_contact_click
end

When(/^I click Queries on the main menu$/) do
  sleep 2
  landing = Admin::Landing.new
  landing.queries_click
end

#Queries DropDown
When(/^I click on the Queries drop down$/) do
  landing = Admin::Landing.new
  landing.queries_dropdown_click
end

When(/^I click on Manage Queries on the queries menu$/) do
  sleep 2
  landing = Admin::Landing.new
  landing.queries_dd_manage_click
end

When(/^I click on Add a New Category on the queries menu$/) do
  landing = Admin::Landing.new
  landing.queries_dd_add_category_click
end

When(/^I click on Base on the queries menu$/) do
  landing = Admin::Landing.new
  landing.queries_dd_base_click
end

When(/^I click on Journal Entry Date on the queries menu$/) do
  landing = Admin::Landing.new
  landing.queries_dd_journal_entry_click
end

When(/^I click on Constituent Journal Entry Date on the queries menu$/) do
  landing = Admin::Landing.new
  landing.queries_dd_constit_journal_entry_click
end

When(/^I click on LYBUNT & SYBUNT on the queries menu$/) do
  landing = Admin::Landing.new
  landing.queries_dd_lybunt_click
end

When(/^I click on Pledges and Payments on the queries menu$/) do
  landing = Admin::Landing.new
  landing.queries_dd_pledges_payments_click
end

When(/^I click on eTapestry Security on the queries menu$/) do
  landing = Admin::Landing.new
  landing.queries_dd_security_click
end

When(/^I click on Processed Transactions on the queries menu$/) do
  landing = Admin::Landing.new
  landing.queries_dd_processed_trans_click
end

When(/^I click Reports on the main menu$/) do
  landing = Admin::Landing.new
  landing.reports_click
end

#Reports DropDown
When(/^I click on the Reports drop down$/) do
  landing = Admin::Landing.new
  landing.reports_dropdown_click
end

When(/^I click on Manage Reports on the reports menu$/) do
  sleep 1
  landing = Admin::Landing.new
  landing.reports_dd_manage_reports_click
end

When(/^I click on Relationship Filters on the reports menu$/) do
  sleep 1
  landing = Admin::Landing.new
  landing.reports_dd_rel_filters_click
end

When(/^I click on System on the reports menu$/) do
  sleep 1
  landing = Admin::Landing.new
  landing.reports_dd_system_click
end

When(/^I click on Top Donor Report on the reports menu$/) do
  sleep 3
  landing = Admin::Landing.new
  landing.reports_dd_top_donor_click
end

When(/^I click on Journal Entry List on the reports menu$/) do
  sleep 1
  landing = Admin::Landing.new
  landing.reports_dd_journal_click
end

When(/^I click on Recency Report on the reports menu$/) do
  sleep 1
  landing = Admin::Landing.new
  landing.reports_dd_recency_click
end

When(/^I click on Shared Links Report on the reports menu$/) do
  sleep 1
  landing = Admin::Landing.new
  landing.reports_dd_shared_click
end

When(/^I click on Aging Pledge Summary on the reports menu$/) do
  sleep 1
  landing = Admin::Landing.new
  landing.reports_dd_aging_pledge_click
end

When(/^I click on eTapestry Standard Reports on the reports menu$/) do
  sleep 1
  landing = Admin::Landing.new
  landing.reports_dd_standard_click
end

When(/^I click on Directory Report on the reports menu$/ ) do
  sleep 1
  landing = Admin::Landing.new
  landing.reports_dd_directory_click
end

When(/^I click on eTapestry Benchmark Reports on the reports menu$/) do
  sleep 1
  landing = Admin::Landing.new
  landing.reports_dd_benchmark_click
end

When(/^I click Management on the main menu$/) do
  landing = Admin::Landing.new
  landing.management_click
end

#Management DropDown
When(/^I click on the Management drop down$/) do
  landing = Admin::Landing.new
  landing.management_dropdown_click
end

When(/^I click on Import on the management menu$/) do
  landing = Admin::Landing.new
  landing.management_dd_import_click
end

When(/^I click on Standard Exports on the management menu$/) do
  landing = Admin::Landing.new
  landing.management_dd_exports_click
end

When(/^I click on Mass Update on the management menu$/) do
  landing = Admin::Landing.new
  landing.management_dd_mass_update_click
end

When(/^I click on My Organization on the management menu$/) do
  landing = Admin::Landing.new
  landing.management_dd_my_org_click
end

When(/^I click on My User on the management menu$/) do
  landing = Admin::Landing.new
  landing.management_dd_my_user_click
end

When(/^I click on All Users on the management menu$/) do
  landing = Admin::Landing.new
  landing.management_dd_all_users_click
end

When(/^I click on User Activity on the management menu$/) do
  landing = Admin::Landing.new
  landing.management_dd_user_act_click
end

When(/^I click on Security Groups on the management menu$/) do
  landing = Admin::Landing.new
  landing.management_dd_sec_groups_click
end

When(/^I click on Getting Started Wizard on the management menu$/) do
  landing = Admin::Landing.new
  landing.management_dd_wizard_click
end

When(/^I click on NCOA on the management menu$/) do
  landing = Admin::Landing.new
  landing.management_dd_ncoa_click
end

When(/^I click on Social Media Finder on the management menu$/) do
  landing = Admin::Landing.new
  landing.management_dd_social_media_finder_click
end

When(/^I click on eStore on the management menu$/) do
  landing = Admin::Landing.new
  landing.management_dd_estore_click
end

When(/^I click on Fundraisers on the management menu$/) do
  landing = Admin::Landing.new
  landing.management_dd_fundraisers_click
end

When(/^I click on DIY Forms on the management menu$/) do
  sleep 2
  landing = Admin::Landing.new
  landing.management_dd_diy_click
end

When(/^I click on System Defined Fields on the management menu$/) do
  landing = Admin::Landing.new
  landing.management_dd_sys_defined_click
end

When(/^I click on User Defined Fields on the management menu$/) do
  landing = Admin::Landing.new
  landing.management_dd_user_defined_click
end

When(/^I click on Relationship Types on the management menu$/) do
  landing = Admin::Landing.new
  landing.management_dd_rel_types_click
end

When(/^I click on Sticky Note Types on the management menu$/) do
  landing = Admin::Landing.new
  landing.management_dd_sticky_types_click
end

When(/^I click on Funds on the management menu$/) do
  landing = Admin::Landing.new
  landing.management_dd_funds_click
end

When(/^I click on Campaigns on the management menu$/) do
  landing = Admin::Landing.new
  landing.management_dd_campaigns_click
end

When(/^I click on Approaches on the management menu$/) do
  landing = Admin::Landing.new
  landing.management_dd_approaches_click
end

When(/^I click on Letters on the management menu$/) do
  landing = Admin::Landing.new
  landing.management_dd_letters_click
end

When(/^I click on Goals on the management menu$/) do
  landing = Admin::Landing.new
  landing.management_dd_goals_click
end

When(/^I click on Manage Organization Preferences on the management menu$/) do
  landing = Admin::Landing.new
  landing.management_dd_org_prefs_click
end

When(/^I click on Manage User Preferences on the management menu$/) do
  landing = Admin::Landing.new
  landing.management_dd_user_prefs_click
end

When(/^I click on SEPA Banking Export on the management menu/) do
  landing = Admin::Landing.new
  landing.management_sepa_banking_export_click
end

Then(/^I should be taken to Home$/) do
  landing = Admin::Landing.new
  expect(landing.on_home_page?).to eq(true)
end

Then(/^I should be taken to Find Account$/) do
  landing = Admin::Landing.new
  expect(landing.on_accounts_page?).to eq(true)
end

Then(/^I should be taken to Quick Gift Entry$/) do
  landing = Admin::Landing.new
  expect(landing.on_giving_page?).to eq(true)
end

Then(/^I should be taken to Communication Categories$/) do
  landing = Admin::Landing.new
  expect(landing.on_communications_page?).to eq(true)
end

Then(/^I should be taken to Query Categories$/) do
  landing = Admin::Landing.new
  expect(landing.on_queries_page?).to eq(true)
end

Then(/^I should be taken to Report Categories$/) do
  landing = Admin::Landing.new
  expect(landing.on_reports_page?).to eq(true)
end

Then(/^I should be taken to Management$/) do
  landing = Admin::Landing.new
  expect(landing.on_management_page?).to eq(true)
end

#Home DropDown options
Then(/^I should be taken to User Preferences$/) do
  prefs = Admin::Userprefs.new
  expect(prefs.on_user_prefs_page?).to eq(true)
end

Then(/^I should be taken to My Scheduled Items$/) do
  items = Reports::Scheduled.new
  expect(items.on_scheduled_items_page?).to eq(true)
end

Then(/^I should be taken to Drop Box$/) do
  dbox = Admin::Dropbox.new
  expect(dbox.on_dropbox_page?).to eq(true)
end

Then(/^I should be taken to Getting Started Wizard$/) do
  wizard = Admin::Getstartedwizard.new
  expect(wizard.on_wizard_page?).to eq(true)
end

#Account DropDown options
Then(/^I should be taken to New Account Page$/) do
  addaccount = Account::AddAccount.new
  expect(addaccount.on_add_account_page?).to eq(true)
end

#Giving DropDown options
Then(/^I should be taken to Import Categories page$/) do
  imports = Giving::Imports.new
  expect(imports.on_imports_page?).to eq(true)
end

Then(/^I should be taken to Giving Dynamics launch page$/) do
  reports = Giving::Givingreports.new
  expect(reports.on_giving_dynamics_page?).to eq(true)
end

Then(/^I should be taken to Top Donor launch page$/) do
  reports = Giving::Givingreports.new
  expect(reports.on_top_donor_page?).to eq(true)
end

Then(/^I should be taken to Pledge Report launch page$/) do
  reports = Giving::Givingreports.new
  expect(reports.on_pledge_report_page?).to eq(true)
end

Then(/^I should be taken to Fund Activity Summary launch page$/) do
  reports = Giving::Givingreports.new
  expect(reports.on_fund_activity_page?).to eq(true)
end

Then(/^I should be taken to Donor Cash Projection launch page$/) do
  reports = Giving::Givingreports.new
  expect(reports.on_cash_projection_page?).to eq(true)
end

Then(/^I should be taken to Prospect Research page$/) do
  research = Giving::Imports.new
  expect(research.on_prosepect_research_page?).to eq(true)
end

Then(/^I should be taken to Planned Giving Calculators page$/) do
  plan = Giving::Imports.new
  expect(plan.on_planned_giving_page?).to eq(true)
end

Then(/^I should be taken to Cultivation Tools page$/) do
  tools = Giving::Imports.new
  expect(tools.on_cultivation_tools_page?).to eq(true)
end

#Communication DropDown options

Then(/^I should be taken to Create Correspondence category page$/) do
  cat_create = Communications::Createcategory.new
  expect(cat_create.on_create_category_page?).to eq(true)
end

Then(/^I should be taken to eTapestry & Constant Contact page$/) do
  const_cont = Communications::Constcontact.new
  expect(const_cont.on_const_cont_page?).to eq(true)
end

#Queries DropDown options
Then(/^I should be taken to Create Query category page$/) do
  query_create = Queries::Createquerycategory.new
  expect(query_create.on_create_query_page?).to eq(true)
end

Then(/^I should be taken to Edit Query Category: Base$/) do
  query = Queries::Editcategory.new
  expect(query.on_edit_base_page?).to eq(true)
end

Then(/^I should be taken to Edit Query Category: Journal Entry Date$/) do
  query = Queries::Editcategory.new
  expect(query.on_edit_journal_page?).to eq(true)
end

Then(/^I should be taken to Edit Query Category: Constituent Journal Entry Date$/) do
  query = Queries::Editcategory.new
  expect(query.on_edit_constit_journal_page?).to eq(true)
end

Then(/^I should be taken to Edit Query Category: LYBUNT & SYBUNT$/) do
  query = Queries::Editcategory.new
  expect(query.on_edit_lybunt_page?).to eq(true)
end

Then(/^I should be taken to Edit Query Category: Pledges and Payments$/) do
  query = Queries::Editcategory.new
  expect(query.on_edit_pledges_payments_page?).to eq(true)
end

Then(/^I should be taken to Edit Query Category: Processed Transactions$/) do
  query = Queries::Editcategory.new
  expect(query.on_edit_proc_transactions_page?).to eq(true)
end

Then(/^I should be taken to Edit Query Category: eTapestry Security$/) do
  query = Queries::Editcategory.new
  expect(query.on_edit_security_page?).to eq(true)
end

#Reports DropDown options
Then(/^I should be taken to Relationship Filters page$/) do
  report = Reports::Relationshipfilter.new
  expect(report.on_relationship_filters_page?).to eq(true)
end

Then(/^I should be taken to Edit Report Category: System$/) do
  report = Reports::Editreportscategory.new
  expect(report.on_system_page?).to eq(true)
end

Then(/^I should be taken to Launch Top Donor Report$/) do
  report = Reports::Reportlauncher.new
  expect(report.on_top_donor_page?).to eq(true)
end

Then(/^I should be taken to Launch Journal Entry List$/) do
  report = Reports::Reportlauncher.new
  expect(report.on_journal_page?).to eq(true)
end

Then(/^I should be taken to Launch Recency Report$/) do
  report = Reports::Reportlauncher.new
  expect(report.on_recency_page?).to eq(true)
end

Then(/^I should be taken to Launch Shared Links Report$/) do
  report = Reports::Reportlauncher.new
  expect(report.on_shared_links_page?).to eq(true)
end

Then(/^I should be taken to Launch Aging Pledge Summary$/) do
  report = Reports::Reportlauncher.new
  expect(report.on_aging_pledge_page?).to eq(true)
end

Then(/^I should be taken to eTapestry Standard Reports page$/) do
  sleep 1
  report = Reports::Standardreports.new
  expect(report.on_standard_reports_page?).to eq(true)
end

Then(/^I should be taken to eTapestry Benchmark Reports page$/) do
  sleep 1
  report = Reports::Standardreports.new
  expect(report.on_benchmark_reports_page?).to eq(true)
end

#Management DropDown options
Then(/^I should be taken to eTapestry Standard Exports$/) do
  report = Reports::Standardreports.new
  expect(report.on_standard_exports_page?).to eq(true)
end

Then(/^I should be taken to Mass Updates page$/) do
  updates = Admin::Massupdates.new
  expect(updates.on_mass_updates_page?).to eq(true)
end

Then(/^I should be taken to Org's Persona page$/) do
  updates = Admin::Userprefs.new
  expect(updates.on_user_prefs_page?).to eq(true)
end

Then(/^I should be taken to My User's Home page$/) do
  updates = Admin::Userprefs.new
  expect(updates.on_user_page?).to eq(true)
end

Then(/^I should be taken to Users page$/) do
  user_page = Admin::Users.new
  expect(user_page.on_users_page?).to eq(true)
end

Then(/^I should be taken to Launch User Activity page$/) do
  reports = Reports::Reportlauncher.new
  expect(reports.on_user_activity_page?).to eq(true)
end

Then(/^I should be taken to Security Groups page$/) do
  security = Admin::Securitygroups.new
  expect(security.on_security_groups_page?).to eq(true)
end

Then(/^I should be taken to Cart page$/) do
  cart = Admin::Cart.new
  expect(cart.on_cart_page?).to eq(true)
end

Then(/^I should be taken to Fundraisers page$/) do
 pending
end

Then(/^I should be taken to My Online Forms page$/) do
  forms = DIY::Onlineforms.new
  expect(forms.on_online_forms_page?).to eq(true)
end

Then(/^I should be taken to System Defined Fields page$/) do
  forms = Admin::Systemdefinedfields.new
  expect(forms.on_system_defined_page?).to eq(true)
end

#Using categories for these for now.  May need to add separate classes for each
Then(/^I should be taken to User Defined Fields page$/) do
  cats = Admin::Categories.new
  expect(cats.on_user_defined_fields_page?).to eq(true)
end

Then(/^I should be taken to Relationship Types page$/) do
  cats = Admin::Categories.new
  expect(cats.on_relationship_types_page?).to eq(true)
end

Then(/^I should be taken to Sticky Note Types page$/) do
  cats = Admin::Categories.new
  expect(cats.on_note_types_page?).to eq(true)
end

Then(/^I should be taken to Funds page$/) do
  cats = Admin::Categories.new
  expect(cats.on_funds_page?).to eq(true)
end

Then(/^I should be taken to Campaigns page$/) do
  cats = Admin::Categories.new
  expect(cats.on_campaigns_page?).to eq(true)
end

Then(/^I should be taken to Approach page$/) do
  cats = Admin::Categories.new
  expect(cats.on_approach_page?).to eq(true)
end

Then(/^I should be taken to Letters page$/) do
  cats = Admin::Categories.new
  expect(cats.on_letters_page?).to eq(true)
end

Then(/^I should be taken to Goals page$/) do
  goal = Admin::Goals.new
  expect(goal.on_goals_page?).to eq(true)
end

Then(/^I should be taken to Orgs Preferences page$/) do
  pending
end