@crit_proc1
Feature: Mass Update

  Background:
   Given I login into eTap for CP1

    Scenario: Update Existing Account Values
     When I click Management on the main menu
     And I click on Mass Update on the management menu
     And I click Update Existing Accounts on the Mass Update page
     And I set the query category to 'Mass Update'
     And I set the query to 'Update Existing Account Values - A'
     #And the 'Account Type' single select field should be set to 'Individual'
     And I set the UDF 'Marital Status' dropdown to 'Married' in the UDF section on the classic add account page
     And I click Next on the Mass Update page
     And I should see the message Accounts to Update: '4' on the mass update page
     And I click Next on the Mass Update page
     And I should see the following message 'Mass Update Completed Successfully' as a result of this mass update
     And I click Accounts
     And I click on Find an Account on the accounts menu
     And I type 'Kevin Smith' into the search field
     And I click Find
     And I click on the 'Kevin Smith' account
     And I click on the 'Defined Fields' page of the constituent record
     And I should see 'Marital Status' set to 'Married' on the payment page
     And I click Accounts
     And I click on Find an Account on the accounts menu
     And I type 'Ed Smith' into the search field
     And I click Find
     And I click on the 'Ed Smith' account
     And I click on the 'Defined Fields' page of the constituent record
     And I should see 'Marital Status' set to 'Married' on the payment page
     And I click Management on the main menu
     And I click on Mass Update on the management menu
     And I click Update Existing Accounts on the Mass Update page
     And I set the query category to 'Mass Update'
     And I set the query to 'Update Existing Account Values - A'
     And I set the Update Type to Remove
     #And the 'Account Type' single select field should be set to 'Individual'
     And I set the UDF 'Marital Status' dropdown to 'Married' in the UDF section on the classic add account page
     And I click Next on the Mass Update page
     And I should see the message Accounts to Update: '4' on the mass update page
     And I click Next on the Mass Update page
     And I should see the following message 'Mass Update Completed Successfully' as a result of this mass update
     And I click Queries on the main menu
     And I click on Manage Queries on the queries menu
     And I click on the 'Mass Update' category
####    Add query to automationbot.us database before checkin  ###
     And I click on the 'Marital Status Is Blank' query
     And I click Save And 'Preview'
#     Then I should see the message 'Displaying 1 - 2 of 2' on the query preview screen
     Then I should see '2 Accounts' results on the query preview page

    Scenario: Create New Contacts
     When I clear old data from the Mass Update query
     And I click Management on the main menu
     And I click on Mass Update on the management menu
     And I click Create New Contacts on the Mass Update page
     And I set the query category to 'Mass Update'
     And I set the query to 'Update Existing Account Values - A'
     And I mark the Final checkbox on the Mass Add Journal Contacts page
     And I set the date to Today on the Mass Add Journal Contacts page
     And I set the Contact Method to 'Letter'
     And I set the Subject to 'Fall Appeal 2015' on the Mass Add Journal Contacts page
     And I set the Note to 'Mailed Fall Appeal Letter on November 3, 2015' on the Mass Add Journal Contacts page
     And I click Next on the Mass Update page
     And I click Next on the Mass Update page
     And I should see the following message 'Mass Update Completed Successfully' as a result of this mass update
     And I click Queries on the main menu
     And I click on Manage Queries on the queries menu
     And I click on the 'Mass Update' category
#####    Add query to automationbot.us database before checkin  ###
     And I click on the 'New Journal Contacts' query
     And I click Save And 'Preview'
     And I should see '4 Journal Entries' results on the query preview page
     And I click Contact on the Query Preview page
     And I should see the Subject set to 'Fall Appeal 2015'
     And I should see the Note set to 'Mailed Fall Appeal Letter on November 3, 2015'
     And I click Delete on the contact page
     And I click Queries on the main menu
     And I click on Manage Queries on the queries menu
     And I click on the 'Mass Update' category
     And I click on the 'New Journal Contacts' query
     And I click Save And 'Preview'
     And I should see '3 Journal Entries' results on the query preview page
     And I click Contact on the Query Preview page
     And I should see the Subject set to 'Fall Appeal 2015'
     And I should see the Note set to 'Mailed Fall Appeal Letter on November 3, 2015'
     And I click Delete on the contact page
     And I click Queries on the main menu
     And I click on Manage Queries on the queries menu
     And I click on the 'Mass Update' category
     And I click on the 'New Journal Contacts' query
     And I click Save And 'Preview'
     And I should see '2 Journal Entries' results on the query preview page
     And I click Contact on the Query Preview page
     And I should see the Subject set to 'Fall Appeal 2015'
     And I should see the Note set to 'Mailed Fall Appeal Letter on November 3, 2015'
     And I click Delete on the contact page
     And I click Queries on the main menu
     And I click on Manage Queries on the queries menu
     And I click on the 'Mass Update' category
     And I click on the 'New Journal Contacts' query
     And I click Save And 'Preview'
     And I should see '1 Journal Entry' results on the query preview page
     And I click Contact on the Query Preview page
     And I should see the Subject set to 'Fall Appeal 2015'
     And I should see the Note set to 'Mailed Fall Appeal Letter on November 3, 2015'
     And I click Delete on the contact page
     And I click Queries on the main menu
     And I click on Manage Queries on the queries menu
     And I click on the 'Mass Update' category
     And I click on the 'New Journal Contacts' query
     And I click Save And 'Preview'
#     Then I should see zero results on the query preview screen
     Then I should see '0 Journal Entries' results on the query preview page


    Scenario: Empty Query
     When I click Management on the main menu
     And I click on Mass Update on the management menu
     And I click Update Existing Accounts on the Mass Update page
     ####    Add query to automationbot.us database before checkin  ###
     And I set the query category to 'Mass Update'
     And I set the query to 'Empty Query - A'
     #And the 'Account Type' single select field should be set to 'Individual'
     And I set the UDF 'Account Type' dropdown to 'Individual' in the UDF section on the classic add account page
     And I click Next on the Mass Update page
     Then I should see 'You cannot perform your mass update because there are no accounts in your query.' on the mass update preview page