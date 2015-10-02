Feature: Query name with less than and equal sign not saving correctly
  Background:
    Given I am logged into eTap

  Scenario: Save query with less than and equal sign in name
    Given I am logged into eTap
    When I click Queries on the main menu
    And I click on the 'Base' category
    And I click 'New Query' on the Edit Query Category page
    And I set the Name to 'Donor Review <= Acknowledgement' on the Create a New Query page
    And I set the Description to '2015 Donors <= with a mailing address' on the Create a New Query page
    And I set the data return type to 'Journal Entries' on the Create a New Query page
    And I click on 'Journal Entry Date' under Available Fields on the Create a New Query page
    And I set the Journal Entry Date Range Type to 'Custom Range' on the Create a New Query page
    And I set the Journal Entry Date Start Date to '1/1/2015' on the Create a New Query page
    And I set the Journal Entry Date End Date to '12/31/2015' on the Create a New Query page
    And I set the Available Fields category to 'Amounts' on the Create a New Query page
    And I click on 'Individual Transaction Received' under Available Fields on the Create a New Query page
    And I set Individual Transaction Received to 'Greater Than Or Equal To' '.01' on the Create a New Query page
    And I set the Available Fields category to 'Account' on the Create a New Query page
    And I click on 'Address Lines' under Available Fields on the Create a New Query page
    And I click Field has any value on the query page
    When I click Save And 'View Queries'
    Then I should see a query named Donor Review <= Acknowledgement on the Edit Query Category page
    And I should see a description of 2015 Donors <= with a mailing address
    And I click delete below the 'Donor Review <= Acknowledgement' query on the Create a New Query page
    And I click Yes to permanently delete the item
    And I should not see a query named Donor Review <= Acknowledgement on the Edit Query Category page
