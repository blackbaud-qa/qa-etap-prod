Feature: Add soft credit column in Journal

  Background:
    Given I login into eTap for CP6

  Scenario: Add soft credit column in Journal
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
    And I set the Soft Credit Information to 'Anne Hatch'
    And the Soft Credit Amount to '500.00'
    And I click Save And 'Go to Journal'
    When I click choose columns
    And I mark the checkbox for soft credit
    And I click on apply changes
    Then I should see soft credit column on Journal Page
    And I should see 'Anne Hatch' in soft credit column
    When I click on 'Anne Hatch' in soft credit column
    Then I should be taken to 'Anne Hatch' Home page












