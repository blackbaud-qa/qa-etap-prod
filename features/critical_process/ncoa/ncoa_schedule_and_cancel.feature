@crit_proc
Feature: NCOA - Schedule and Cancel Job

  Background:
    Given I am logged into eTap


  Scenario: Verify Settings page appears when no NCOA scheduled
    When I click Management on the main menu
    And I click NCOA on the Management page
    Then I should see the NCOA Settings page

  Scenario: Verify defaults on settings page
    When I click Management on the main menu
    And I click NCOA on the Management page
    Then the Category field should be set to 'Base' on the NCOA page
    And the Query field should be set to 'All Constituents - A' on the NCOA page
    And the Date field should be set to tomorrow on the NCOA page
    And the Personas field should be set to Primary Personas on the NCOA page
    And the Formatting field should be set to All Return Addresses on the NCOA page
    And the Email Address field should be set to 'trey.santerre@blackbaud.com' on the NCOA page

  Scenario: Validate the default query category can be changed
    When I click Management on the main menu
    And I click NCOA on the Management page
    When I select 'Constituent Journal Entry Date' for the Category field on the NCOA page
    Then the Category field should be set to 'Constituent Journal Entry Date' on the NCOA page

  Scenario: Validate the default query can be changed
    When I click Management on the main menu
    And I click NCOA on the Management page
    When I select 'All Accounts - A' for the Query field on the NCOA page
    Then the Query field should be set to 'All Accounts - A' on the NCOA page

  Scenario: Verify ability to click edit query
    When I click Management on the main menu
    And I click NCOA on the Management page
    And I select 'NCOA Query - A' for the Query field on the NCOA page
    When I click Edit the Selected Query on the NCOA page
    Then I should be taken to the edit query page

  Scenario: Verify saving query edits functions
    When I click Management on the main menu
    And I click NCOA on the Management page
    And I select 'NCOA Query - A' for the Query field on the NCOA page
    When I click Edit the Selected Query on the NCOA page
    And I set the Name to 'Test 1' on the Create a New Query page
    And I click save on the Edit Query Definition page
    Then I should see the NCOA Settings page
    And I should reset the query name to 'NCOA Query' on the NCOA page

  Scenario: Validate Create New Query link works
    When I click Management on the main menu
    And I click NCOA on the Management page
    And I click Create a New Query on the NCOA page
    And I set the Name to 'NCOA 1' on the Create a New Query page
    And I set the Available Fields category to 'Account' on the Create a New Query page
    And I click on 'State/Province' under Available Fields on the Create a New Query page
    And I type 'IN' into the State field on the Create a New Query Page
    And I click save on the Edit Query Definition page
    Then I should see the NCOA Settings page
    And the Query field should be set to 'NCOA 1 - A' on the NCOA page
    And I delete the 'NCOA 1' query for the next run

  Scenario: Verify calendar appears upon clicking date picker
    When I click Management on the main menu
    And I click NCOA on the Management page
    And I click the calendar icon on the NCOA page
    Then the calendar should appear on the NCOA page

  Scenario: Verify selecting date from picker populates date field
    When I click Management on the main menu
    And I click NCOA on the Management page
    And I click the calendar icon on the NCOA page
    And I click Today on the calendar on the NCOA page
    Then the date field should be populated with Today

#  Scenario: Verify validation on date field
#    When I click Management on the main menu
#    And I click NCOA on the Management page
#    And I set 'test' for the Date field on the NCOA page
#    And I click Schedule to see the error on the NCOA page
#    Then I should see the 'Date: The date must be in the future' error
#    And I should close the javascript popup

#  Scenario: Verify validation on email field
#    When I click Management on the main menu
#    And I click NCOA on the Management page
#    And I set 'test' for the Email field on the NCOA page
#    And I click Schedule to see the error on the NCOA page
#    Then I should see the 'Email: This field must be a valid email address' error
#    And I should close the javascript popup

#  Scenario: Verify required fields cannot be blank
#    When I click Management on the main menu
#    And I click NCOA on the Management page
#    And I select '(Select a Category of Queries)' for the Category field on the NCOA page
#    And I select '(Select a Query)' for the Query field on the NCOA page
#    And I set '' for the Date field on the NCOA page
#    And I set '' for the Email field on the NCOA page
#    And I click Schedule to see the error on the NCOA page
#    Then I should see the 'Query: This field must be completed prior to saving' error
#    And I should see the 'Date: This field must be completed prior to saving' error
#    And I should see the 'Email: This field must be completed prior to saving' error
#    And I should close the javascript popup

  Scenario: Verify the USPS Address Standardization page
    When I click Management on the main menu
    And I click NCOA on the Management page
    And I click the USPS Address Standardization page
    And I switch to the new tab in my browser
    Then I should be taken to the USPS page
    And I close the current tab


#  I believe running the following tests wouldn't be good for automation, since
#  they will use up the service runs, which appear to have a limited number.

#  Scenario: Verify successful schedule
#    Given the <settings> are populated as follows:
#    | Settings                                                    |
#    | Category: Base                                              |
#    | Query: All Accounts - A                                     |
#    | Total Accounts: x                                           |
#    | Included Personas: Primary                                  |
#    | USPS Formatting: Return all addresses with USPS formatting  |
#    | Completion email sent to: lance.moore@blackbaud.com                |
#    When I click Submit
#    Then I should be taken to the stats page
#
#  Scenario: Verify Edit button functions
#    Given I am on the scheduled content page for a future run [1/1/2020]
#    And that run is scheduled for the following
#    | Settings                                                    |
#    | Category: Base                                              |
#    | Query: All Accounts - A                                     |
#    | Total Accounts: x                                           |
#    | Included Personas: Primary                                  |
#    | USPS Formatting: Return all addresses with USPS formatting  |
#    | Completion email sent to: lance.moore@blackbaud.com                |
#    When I click Edit
#    Then I should see the edit contents screen
#    And the above settings should be populated
#
#  Scenario: Verify Edits save
#    Given I am on the edit contents screen
#    When I change Included Personas from Primary to All
#    And click Submit
#    Then I should see the scheduled content page with All Personas listed
#
#  Scenario: Verify Cancel button functions
#    Given I am on the scheduled content page for a future run [1/1/2020]
#    When I click Cancel
#    Then  I should see the following message: Are you sure you want to cancel this scheduled NCOA Import?
#
#  Scenario: Verify Cancel - Yes functions
#    Given I have clicked cancel for a scheduled run
#    When I click Yes to confirm cancellation
#    Then I should be taken to the Settings page with defaults selected
#
#  Scenario: Verify Cancel - No functions
#    Given I have clicked cancel for a scheduled run
#    When I click No to confirm cancellation
#    Then I should be taken to the Scheduled page
#
#  Scenario: Verify Cancel completely removes job
#    Given I have clicked Cancel
#    When I click NCOA under Management
#    Then I should see an empty settings page