Feature: Add Tribute column in Journal

  Background:
    Given I login into eTap for CP6

  Scenario: Add tribute column in Journal
    When I click Giving on the main menu
    And I click on Add a Gift or Pledge on the giving menu
    And I click Search for an Account
    And type 'Raymond Barnes' into the search field in popup
    And click Find in popup
    And select 'Raymond Barnes' in popup
    And set the date to '9/30/2090'
    And set the Received Amount to '500.00'
    And set the Fund to 'Unrestricted'
    And set the Gift Type to 'Cash'
    And I set the Tribute Information to 'Cindy Grant'
    And I click Save And 'Go to Journal'
    And I click on 'Raymond Barnes' in original account column
    Then I should be taken to 'Raymond Barnes' Home page
    And I click Journal
    When I click choose columns
    And I mark the checkbox for tribute
    And I click on apply changes
    Then I should see tribute column on Journal Page
    And I should see 'Cindy Grant' in tribute column
    When I click on 'Cindy Grant' in tribute column
    Then  I should be taken to 'Cindy Grant' Home page

