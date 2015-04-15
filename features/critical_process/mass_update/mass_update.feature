@crit_proc
Feature: Mass Update

    Scenario: Update Existing Account Values
     Given I am logged into eTap
     When I click Management on the main menu
     And I click Mass Update
     And I click Update Existing Accounts on the Mass Update page
     And I set the query category to 'Mass Update'
     And I set the query to 'Update Existing Account Values - A'
     And the 'Account Type' single select field should be set to 'Individual'
     And I click Next on the Mass Update page
     And I should see the message Accounts to Update: '4' on the mass update page
     And I click Next on the Mass Update page
     And I should see the following message 'Mass Update Completed Successfully' as a result of this mass update
     And I click Accounts
     And I type 'Kevin Smith' into the search field
     And I click Find
     And I click on the 'Kevin Smith' account
     And I click on the 'Defined Fields' page of the constituent record
     And I should see 'Account Type' set to 'Individual' on the payment page
     And I click Accounts
     And I type 'Ed Smith' into the search field
     And I click Find
     And I click on the 'Ed Smith' account
     And I click on the 'Defined Fields' page of the constituent record
     And I should see 'Account Type' set to 'Individual' on the payment page
     And I click Management on the main menu
     And I click Mass Update
     And I click Update Existing Accounts on the Mass Update page
     And I set the query category to 'Mass Update'
     And I set the query to 'Update Existing Account Values - A'
     And I set the Update Type to Remove
     And the 'Account Type' single select field should be set to 'Individual'
     And I click Next on the Mass Update page
     And I should see the message Accounts to Update: '4' on the mass update page
     And I click Next on the Mass Update page
     And I should see the following message 'Mass Update Completed Successfully' as a result of this mass update
     And I click Queries on the main menu
     And I click on the 'Mass Update' category
####    Add query to automationbot.us database before checkin  ###
     And I click on the 'Account Type Is Blank' query
     And I click Save And 'Preview'
     Then I should see the message 'Displaying 1 - 2 of 2' on the query preview screen


    Scenario: Create New Contacts
     Given I am logged into eTap
     When I click Management on the main menu
     And I click Mass Update
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
     And I click on the 'Mass Update' category
#####    Add query to automationbot.us database before checkin  ###
     And I click on the 'New Journal Contacts' query
     And I click Save And 'Preview'
     And I should see the message 'Displaying 1 - 4 of 4' on the query preview screen
     And I click Contact on the Query Preview page
     And I should see the Subject set to 'Fall Appeal 2015'
     And I should see the Note set to 'Mailed Fall Appeal Letter on November 3, 2015'
     And I click Delete on the contact page
     And I click Queries on the main menu
     And I click on the 'Mass Update' category
     And I click on the 'New Journal Contacts' query
     And I click Save And 'Preview'
     And I should see the message 'Displaying 1 - 3 of 3' on the query preview screen
     And I click Contact on the Query Preview page
     And I should see the Subject set to 'Fall Appeal 2015'
     And I should see the Note set to 'Mailed Fall Appeal Letter on November 3, 2015'
     And I click Delete on the contact page
     And I click Queries on the main menu
     And I click on the 'Mass Update' category
     And I click on the 'New Journal Contacts' query
     And I click Save And 'Preview'
     And I should see the message 'Displaying 1 - 2 of 2' on the query preview screen
     And I click Contact on the Query Preview page
     And I should see the Subject set to 'Fall Appeal 2015'
     And I should see the Note set to 'Mailed Fall Appeal Letter on November 3, 2015'
     And I click Delete on the contact page
     And I click Queries on the main menu
     And I click on the 'Mass Update' category
     And I click on the 'New Journal Contacts' query
     And I click Save And 'Preview'
     And I should see the message 'Displaying 1 - 1 of 1' on the query preview screen
     And I click Contact on the Query Preview page
     And I should see the Subject set to 'Fall Appeal 2015'
     And I should see the Note set to 'Mailed Fall Appeal Letter on November 3, 2015'
     And I click Delete on the contact page
     And I click Queries on the main menu
     And I click on the 'Mass Update' category
     And I click on the 'New Journal Contacts' query
     And I click Save And 'Preview'
     Then I should see zero results on the query preview screen


    Scenario: Empty Query
     Given I am logged into eTap
     When I click Management on the main menu
     And I click Mass Update
     And I click Update Existing Accounts on the Mass Update page
     ####    Add query to automationbot.us database before checkin  ###
     And I set the query category to 'Mass Update'
     And I set the query to 'Empty Query - A'
     And the 'Account Type' single select field should be set to 'Individual'
     And I click Next on the Mass Update page
     Then I should see 'You cannot perform your mass update because there are no accounts in your query.' on the mass update preview page