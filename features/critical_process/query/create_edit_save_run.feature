@crit_proc2
Feature: Create, Edit, Save and Run Queries

  Background:
    Given I login into eTap for CP2
    And a query category should exist called 'Critical Process Testing'


  Scenario: Create and Edit a New Query
    Given the query 'January 2015 Donors Minus Donors Named John - Custom Query' does not exist in the 'Critical Process Testing' category
    And the query 'Donations made in January 2015' does not exist in the 'Critical Process Testing' category
    And there exists an account that has donated in January 2015
    When I click Queries on the main menu
    And I click on Manage Queries on the queries menu
    And I click on the 'Critical Process Testing' category
    And I click 'New Query' on the Edit Query Category page
    And I set the Name to 'Donations made in January 2015' on the Create a New Query page
    And I set the data return type to 'Journal Entries' on the Create a New Query page
    And I set the Available Fields category to 'Commonly Used Fields' on the Create a New Query page
    And I click on 'Journal Entry Date' under Available Fields on the Create a New Query page
    And I set the Journal Entry Date Range Type to 'Custom Range' on the Create a New Query page
    And I set the Journal Entry Date Start Date to '1/1/2015' on the Create a New Query page
    And I set the Journal Entry Date End Date to '1/31/2015' on the Create a New Query page
    And I set the Available Fields category to 'Amounts' on the Create a New Query page
    And I click on 'Individual Transaction Received' under Available Fields on the Create a New Query page
    And I set Individual Transaction Received to 'Greater Than Or Equal To' '.01' on the Create a New Query page
    And I click Save And 'Preview'
#    And I should see the message 'Displaying 1 - 15 of 15' on the query preview screen
    And I should see the message 'Displaying 1 - ' on the query preview screen
    And I click Edit on the query preview screen
    And I set the data return type to 'Accounts' on the Create a New Query page
    And I click Save And 'Preview'
#    Then I should see the message 'Displaying 1 - 14 of 14' on the query preview screen
    Then I should see the message 'Displaying 1 - ' on the query preview screen


  Scenario: Create a custom account query from a normal query
    Given the query 'Donors Named John' does not exist in the 'Critical Process Testing' category
    And the query 'Donors Named John - Custom Query' does not exist in the 'Critical Process Testing' category
    And the query 'Donations made in January 2015' does not exist in the 'Critical Process Testing' category
    When I click Queries on the main menu
    And I click on Manage Queries on the queries menu
    And I click on the 'Critical Process Testing' category
    And I click 'New Query' on the Edit Query Category page
    And I set the Name to 'Donors Named John' on the Create a New Query page
    And I set the data return type to 'Accounts' on the Create a New Query page
    And I set the Available Fields category to 'Account' on the Create a New Query page
    And I click on 'Short Salutation' under Available Fields on the Create a New Query page
    And I type 'John' into the Short Salutation field on the Create a New Query page
    And I click Save And 'Preview'
#    And I should see the message 'Displaying 1 - 4 of 4' on the query preview screen
    And I should see the message 'Displaying 1 - ' on the query preview screen
    And I click Edit on the query preview screen
    And I click Save And 'Create a custom account query'
    And I set the Name to 'Donors Named John - Custom Query' on the Create a New Query page
    And I click Save And 'Preview'
#    Then I should see the message 'Displaying 1 - 4 of 4' on the query preview screen
    Then I should see the message 'Displaying 1 - ' on the query preview screen

  Scenario: Create a New Custom Account Query
    Given the query 'Hand Selected Donors' does not exist in the 'Critical Process Testing' category
    When I click Queries on the main menu
    And I click on Manage Queries on the queries menu
    And I click on the 'Critical Process Testing' category
    And I click 'New Custom Account Query' on the Edit Query Category page
    And I set the Name to 'Hand Selected Donors' on the Create a New Query page
    And I click Add on the Create a New Query page
    #And I type 'Smith' into the search field in the Find Account popup window
    #And I click Find in the Find Account popup window
    #And I click on 'Ed Smith' in the Find Account popup window
    #And I type 'Carol' into the search field in the Find Account popup window
    #And I click Find in the Find Account popup window
    #And I click on 'Carol Tuttle' in the Find Account popup window
    #And I type 'John' into the search field in the Find Account popup window
    #And I click Find in the Find Account popup window
    #And I click on 'John Carr' in the Find Account popup window
    And I type 'Donor' into the search field in the Find Account popup window
    And I click Find in the Find Account popup window
    And I click on 'Sample Donor' in the Find Account popup window
    And I click Close in the Find Account popup window
    And I click Save And 'Preview'
#    Then I should see the message 'Displaying 1 - 3 of 3' on the query preview screen
    Then I should see the message 'Displaying 1 - ' on the query preview screen


  Scenario: Create a New Compound Query
    Given the query 'January 2015 Donors Minus Donors Named John - Custom Query' does not exist in the 'Critical Process Testing' category
    And a specific query 'Donations made in January 2015' has been created in the 'Critical Process Testing' category
    And a specific query 'Donors Named John - Custom Query' has been created in the 'Critical Process Testing' category
    When I click Queries on the main menu
    And I click on Manage Queries on the queries menu
    And I click on the 'Critical Process Testing' category
    And I click 'New Compound Query' on the Edit Query Category page
    And I set the Name to 'January 2015 Donors Minus Donors Named John - Custom Query' on the Create a New Query page
    And I set the data return type to 'Accounts' on the Create a New Query page
    And I set Combine the Queries to Subtract
    And I set the query 1 category to 'Critical Process Testing' on the Create a New Query page
    And I set the query 1 query to 'Donations made in January 2015 - A' on the Create a New Query page
    And I set the query 2 category to 'Critical Process Testing' on the Create a New Query page
    And I set the query 2 query to 'Donors Named John - Custom Query - A' on the Create a New Query page
    And I click Save And 'Preview'
#    And I should see the message 'Displaying 1 - 12 of 12' on the query preview screen
    And I should see the message 'Displaying 1 - ' on the query preview screen
    And I click Edit on the query preview screen
    And I set Combine the Queries to Add
    And I click Save And 'Preview'
#    Then I should see the message 'Displaying 1 - 16 of 16' on the query preview screen
    Then I should see the message 'Displaying 1 - ' on the query preview screen

  Scenario: Create a Query Category
    When I click Queries on the main menu
    And I click on Manage Queries on the queries menu
    And I click New Category on the Query Categories page
    And I set the Name to 'Donation Queries' on the Create Query Category page
    And I click Save Category on the Query Categories page

  Scenario: Deleting Queries and Categories
    Given a specific query 'Donations made in January 2015' has been created in the 'Critical Process Testing' category
    And a specific query 'Donors Named John - Custom Query' has been created in the 'Critical Process Testing' category
    When I click Queries on the main menu
    And I click on Manage Queries on the queries menu
    And I click on the 'Critical Process Testing' category
    And I click delete below the 'Donations made in January 2015' query on the Create a New Query page
    And I click Yes to permanently delete the item
    And I click OK to dismiss the notification about not being able to delete a query
    And I click on the 'Donations made in January 2015' query
    And I click 'Query Associations' in the Tasks menu
    And I click delete below the 'January 2015 Donors Minus Donors Named John - Custom Query' query on the Create a New Query page
    And I click Yes to permanently delete the item
    And I click 'Back to Query Category' in the Tasks menu
    And I click delete below the 'Donations made in January 2015' query on the Create a New Query page
    And I click Yes to permanently delete the item
    And I click 'Save Category' on the Edit Query Category page
    And I click delete below the 'Donors Named John' query on the Create a New Query page
    And I click Yes to permanently delete the item
    And I click 'Save Category' on the Edit Query Category page
    And I click delete below the 'Donors Named John - Custom Query' query on the Create a New Query page
    And I click Yes to permanently delete the item
    And I click Queries on the main menu
    And I click on Manage Queries on the queries menu
#    And I click on the 'New Journal Contacts' query
    And I click on the 'Critical Process Testing' category
    And I click delete below the 'Hand Selected Donors' query on the Create a New Query page
    And I click Yes to permanently delete the item
    And I click Queries on the main menu
    And I click on Manage Queries on the queries menu
#    And I click on the 'New Journal Contacts' query
    And I click delete below the 'Critical Process Testing' query category
    And I click Yes to permanently delete the item
    Then I should see the 'Critical Process Testing' category has been removed from the page






