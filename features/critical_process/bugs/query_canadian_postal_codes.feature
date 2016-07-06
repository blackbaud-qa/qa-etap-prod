@bugs
Feature: Querying on Canadian Postal Codes

  Background:
    Given I login into eTap for bugs

  Scenario: Query on Canadian Postal Codes
    When I click Accounts
    And I click on Add Account on the find account screen
    And I set the Name Format to 'Individual' on the add account page
    And I set the First Name to 'Carl' on the add account page
    And I set the Last Name to 'Canton' on the add account page
    And I click Change Country on the Personas page
    And I set the country to 'Canada' in the Change Country modal on the Personas page
    And I click Continue in the Change Country modal on the Personas page
    And I set Address Lines to '734 James Road' on the classic add account page
    And I set City to 'Calgary' on the classic add account page
    And I set State to 'AL' on the classic add account page
    And I set Postal Code to 'T4U 4P3' on the classic add account page
    And I set the UDF 'Account Type' dropdown to 'Individual' in the UDF section on the classic add account page
    And I click Save And 'Go to Personas' on the add account page
    When I click Queries on the main menu
    And I click on Manage Queries on the queries menu
    And I click on the 'Base' category
    And I click 'New Query' on the Edit Query Category page
    And I set the Name to 'Canadian Postal Codes' on the Create a New Query page
    And I set the data return type to 'Accounts' on the Create a New Query page
    And I set the Available Fields category to 'Account' on the Create a New Query page
    And I click on 'Postal Code' under Available Fields on the Create a New Query page
    And I set Postal Code to 'T4U 4P3' on the Create a New Query page
    And I click Save And 'Preview'
    Then I should see 'Carl Canton' in the query results
    And I should see '1 Account' results on the query preview page
    And I click on 'Carl Canton' in the search results
    And I click on the account settings page on the accounts page
    And I click Delete Role on the Account Settings page
    And I click Yes to permanently delete the item
    And I click Queries on the main menu
    And I click on Manage Queries on the queries menu
    And I click on the 'Base' category
    And I click delete below the 'Canadian Postal Codes' query on the Create a New Query page
    And I click Yes to permanently delete the item
    Then I should be taken to Edit Query Category: Base
