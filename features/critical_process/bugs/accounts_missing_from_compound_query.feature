Feature: Accounts Missing from Compound Query when adding Journal Entries and Accounts

  Scenario: Adding Journal Entries and Accounts in Compound Query
    Given I am logged into eTap
    And I create constituent 'Bob Smith'
    And I go to the journal of account 'Bob Smith'
    And select Contact from the Add New... drop down menu
    And I set the Subject field to 'Called to Discuss Volunteer Opportunities' on the Journal Contact page
    And I choose Phone from the Method drop down on the Journal Contact page
    And I click Save And 'Go to Personas'
    And I create constituent 'Cindy Smith'
    And I click Queries on the main menu
    And I click on Manage Queries on the queries menu
    And I click New Category on the Query Categories page
    And I set the Name to 'Compound Queries' on the Create Query Category page
    And I click Save Category on the Query Categories page
    And I click 'New Query' on the Edit Query Category page
    And I set the Name to 'Journal Contacts' on the Create a New Query page
    And I set the data return type to 'Journal Entries' on the Create a New Query page
    And I click on 'Journal Entry Types' under Available Fields on the Create a New Query page
    And I select Journal Entry Type 'Contact' on the Create a New Query page
    And I click Save And 'View Queries'
    And I click 'New Compound Query' on the Edit Query Category page
    And I set the Name to 'All Constituents + Journal Contacts' on the Create a New Query page
    And I set the data return type to 'Accounts' on the Create a New Query page
    And I set Combine the Queries to Add
    And I set the query 1 category to 'Compound Queries' on the Create a New Query page
    And I set the query 1 query to 'Journal Contacts - JE' on the Create a New Query page
    And I set the query 2 category to 'Base' on the Create a New Query page
    And I set the query 2 query to 'All Constituents - A' on the Create a New Query page
    And I click Save And 'Preview'
    And I should see 'Bob Smith' in the query results
    And I should see 'Cindy Smith' in the query results
    And I type 'Bob Smith' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'Bob Smith' in the search results
    And I click on 'Account Settings' in the account header
    And I click Delete Role on the Account Settings page
    And I click Yes to permanently delete the item
    And I type 'Cindy Smith' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'Cindy Smith' in the search results
    And I click on 'Account Settings' in the account header
    And I click Delete Role on the Account Settings page
    And I click Yes to permanently delete the item
    And I click Queries on the main menu
    And I click on Manage Queries on the queries menu
    And I click on the 'Compound Queries' category
    And I click delete below the 'All Constituents + Journal Contacts' query on the Create a New Query page
    And I click Yes to permanently delete the item
    And I click Queries on the main menu
    And I click on Manage Queries on the queries menu
    And I click on the 'Compound Queries' category
    And I click delete below the 'Journal Contacts' query on the Create a New Query page
    And I click Yes to permanently delete the item
    And I click Queries on the main menu
    And I click on Manage Queries on the queries menu
    And I click delete below the 'Compound Queries' query category
    When I click Yes to permanently delete the item
    Then I should see the 'Compound Queries' category has been removed from the page


