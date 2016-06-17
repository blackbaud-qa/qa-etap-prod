# TODO: add critproc tag
Feature: Verify query based advanced security is working

  Background:
    Given I login into eTap for CP6

  Scenario: Add security query, create security group, log in and verify results
    When I click Queries on the main menu
    And I click on Manage Queries on the queries menu
    And I click on the 'eTapestry Security' category
    And I click 'New Query' on the Edit Query Category page
    And I set the Name to 'Constituents in Indiana' on the Create a New Query page
    And I set the data return type to 'Accounts' on the Create a New Query page
    And I click on the Search Fields tab on the Create a New Query page
    And I enter 'State' into the search field on the Create a New Query page
    And I press Enter on the keyboard
    And I click on 'State/Province' under Available Fields on the Create a New Query page
    And I set the State Province field to 'IN' on the Create a New Query page
    And I click Save And 'Preview'
