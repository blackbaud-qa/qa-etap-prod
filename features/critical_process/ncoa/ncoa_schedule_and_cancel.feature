Feature: NCOA - Schedule and Cancel Job
  As a user
  I want to utilize NCOA
  In order to update my addresses

  Background:
    Given I login as [USER]

  Scenario: Verify Settings page appears when no NCOA scheduled
    When I click NCOA under Management
    Then I should see the Settings page

  Scenario: Verify defaults on settings page
    When I click NCOA under Management
    Then the following defaults should be set
    | Category: Base                    |
    | Query: All Accounts               |
    | Date: "tomorrow"                  |
    | Personas: Primary Personas        |
    | Formatting: Return All Addresses  |
    | Email Address: lance.moore@blackbaud.com |

  Scenario: Validate the default query category can be changed
    Given I click NCOA under Management
    When I click the category drop down
    And select Constituent Journal Entry Date
    Then Constituent Journal Entry Date should populate in the category field

  Scenario: Validate the default query can be changed
    Given I click NCOA under Management
    When I click the query drop down
    And select Last Week -JE
    Then Last Week - JE should populate in the query field

  Scenario: Verify ability to click edit query
    Given I click NCOA under Management
    And the query is set to [non standard query]
    When I click Edit selected query
    Then I should be taken to the edit query page

  Scenario: Verify saving query edits functions
    Given the query is set to [non standard query]
    And I click Edit selected query
    When I change the name to [test 1]
    And click save
    Then I should be taken back to settings page

  Scenario: Validate Create New Query link works
    Given I have clicked New Query on Settings page
    And I enter NCOA 1 in name field
    And I accept the defaults
    And set the State to IN
    When I click Save
    Then I should be taken back to Settings page
    And NCOA1 should appear in query field

  Scenario: Verify calendar appears upon clicking date picker
    When I click the calendar icon
    Then the calendar should appear

  Scenario: Verify selecting date from picker populates date field
    Given I click the calendar icon
    When I select [mm/dd/yyyy]
    Then the date field should populate with [mm/dd/yyyy]

  Scenario: Verify validation on date field
    Given all required fields are populated
    And I click in the date field
    When I enter test
    And I click submit
    Then I should see the following message: Date: The date format is not valid. Must be in a mm/dd/yyyy format.

  Scenario: Verify validation on email field
    Given all required fields are populated
    And I enter test in the email field
    When I click Submit
    Then I should see the following error: This field must be a valid email address.

  Scenario: Verify required fields cannot be blank
    Given a <field> is not populated
    When I click submit
    Then I should see this <error>
    |  field    | message                                              |
    |  category | Query: This field must be completed prior to saving. |
    |  query    | Query: This field must be complated prior to saving. |
    |  date     | Date: This field must be completed prior to saving.  |
    |  email    | Email: This field must be completed prior to saving. |

  Scenario: Verify the USPS Address Standardization page
    When I click the USPS Address Standardization page
    Then I should be taken to the USPS page

  Scenario: Verify successful schedule
    Given the <settings> are populated as follows:
    | Settings                                                    |
    | Category: Base                                              |
    | Query: All Accounts - A                                     |
    | Total Accounts: x                                           |
    | Included Personas: Primary                                  |
    | USPS Formatting: Return all addresses with USPS formatting  |
    | Completion email sent to: lance.moore@blackbaud.com                |
    When I click Submit
    Then I should be taken to the stats page

  Scenario: Verify Edit button functions
    Given I am on the scheduled content page for a future run [1/1/2020]
    And that run is scheduled for the following
    | Settings                                                    |
    | Category: Base                                              |
    | Query: All Accounts - A                                     |
    | Total Accounts: x                                           |
    | Included Personas: Primary                                  |
    | USPS Formatting: Return all addresses with USPS formatting  |
    | Completion email sent to: lance.moore@blackbaud.com                |
    When I click Edit
    Then I should see the edit contents screen
    And the above settings should be populated

  Scenario: Verify Edits save
    Given I am on the edit contents screen
    When I change Included Personas from Primary to All
    And click Submit
    Then I should see the scheduled content page with All Personas listed

  Scenario: Verify Cancel button functions
    Given I am on the scheduled content page for a future run [1/1/2020]
    When I click Cancel
    Then  I should see the following message: Are you sure you want to cancel this scheduled NCOA Import?

  Scenario: Verify Cancel - Yes functions
    Given I have clicked cancel for a scheduled run
    When I click Yes to confirm cancellation
    Then I should be taken to the Settings page with defaults selected

  Scenario: Verify Cancel - No functions
    Given I have clicked cancel for a scheduled run
    When I click No to confirm cancellation
    Then I should be taken to the Scheduled page

  Scenario: Verify Cancel completely removes job
    Given I have clicked Cancel
    When I click NCOA under Management
    Then I should see an empty settings page