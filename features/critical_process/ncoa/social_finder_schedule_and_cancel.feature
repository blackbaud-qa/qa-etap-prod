@crit_proc1
Feature: Social Media Finder - Schedule and Cancel Job

  Background:
    Given I login into eTap for CP1

  Scenario: Verify Settings page appears when no NCOA scheduled
    When I click Management on the main menu
    And I click on Social Media Finder on the management menu
    Then I should see the Social Media Finder Settings page


  Scenario: Verify defaults on settings page
    When I click Management on the main menu
    And I click on Social Media Finder on the management menu
    Then the Category field should be set to 'Base' on the NCOA page
    And the Query field should be set to 'All Constituents - A' on the NCOA page
    And the Date field should be set to tomorrow on the NCOA page
    And the Personas field should be set to Primary Personas on the NCOA page
    And the Email Address field should be set to 'qa-1@blackbaud.com' on the NCOA page

  Scenario: Validate the default query category can be changed
    When I click Management on the main menu
    And I click on Social Media Finder on the management menu
    When I select 'Constituent Journal Entry Date' for the Category field on the NCOA page
    Then the Category field should be set to 'Constituent Journal Entry Date' on the NCOA page

  Scenario: Validate the default query can be changed
    When I click Management on the main menu
    And I click on Social Media Finder on the management menu
    When I select 'All Accounts - A' for the Query field on the NCOA page
    Then the Query field should be set to 'All Accounts - A' on the NCOA page

  Scenario: Verify ability to click edit query
    When I click Management on the main menu
    And I click on Social Media Finder on the management menu
    And I select 'NCOA Query - A' for the Query field on the NCOA page
    When I click Edit the Selected Query on the NCOA page
    Then I should be taken to the edit query page

  Scenario: Verify saving query edits functions
    When I click Management on the main menu
    And I click on Social Media Finder on the management menu
    And I select 'NCOA Query - A' for the Query field on the NCOA page
    When I click Edit the Selected Query on the NCOA page
    And I set the Name to 'Test 1' on the Create a New Query page
    And I click save on the Edit Query Definition page
    Then I should see the Social Media Finder Settings page
    And I should reset the query name to 'NCOA Query' on the NCOA page

  Scenario: Validate Create New Query link works
    When I click Management on the main menu
    And I click on Social Media Finder on the management menu
    And I click Create a New Query on the NCOA page
    And I set the Name to 'Social Finder 1' on the Create a New Query page
    And I set the Available Fields category to 'Account' on the Create a New Query page
    And I click on 'State/Province' under Available Fields on the Create a New Query page
    And I type 'IN' into the State field on the Create a New Query Page
    And I click save on the Edit Query Definition page
    Then I should see the Social Media Finder Settings page
    And the Query field should be set to 'Social Finder 1 - A' on the NCOA page
    And I delete the 'Social Finder 1' query for the next run

  Scenario: Verify calendar appears upon clicking date picker
    When I click Management on the main menu
    And I click on Social Media Finder on the management menu
    And I click the calendar icon on the NCOA page
    Then the calendar should appear on the NCOA page

  Scenario: Verify validation on date field
    When I click Management on the main menu
    And I click on Social Media Finder on the management menu
    And I set 'test' for the Date field on the NCOA page
    And I click Schedule to see the error on the NCOA page
    Then I should see the 'Date: The date must be in the future' error
    And I should close the javascript popup

  Scenario: Verify validation on email field
    When I click Management on the main menu
    And I click on Social Media Finder on the management menu
    And I set 'test' for the Email field on the NCOA page
    And I click Schedule to see the error on the NCOA page
    Then I should see the 'Email: This field must be a valid email address' error
    And I should close the javascript popup

  Scenario: Verify required fields cannot be blank
    When I click Management on the main menu
    And I click on Social Media Finder on the management menu
    And I select '(Select a Category of Queries)' for the Category field on the NCOA page
    And I select '(Select a Query)' for the Query field on the NCOA page
    And I set '' for the Date field on the NCOA page
    And I set '' for the Email field on the NCOA page
    And I click Schedule to see the error on the NCOA page
    Then I should see the 'Query: This field must be completed prior to saving' error
    And I should see the 'Date: This field must be completed prior to saving' error
    And I should see the 'Email: This field must be completed prior to saving' error
    And I should close the javascript popup
