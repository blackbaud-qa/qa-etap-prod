@crit_proc2
Feature:Create a new report

  Background:
    Given the report 'Test Report' does not exist

  Scenario: Create a new report
    Given I am logged into eTap
    And I click on reports
    And I click on the system category
    And I click on new report
    And I name the report 'Test Report'
    And I choose Fields from the commonly used report fields category
    And I choose save and run
    And I choose query category 'Base'
    And I choose query 'All Constituents - A'
    And I accept on the default report format 'Display Results on Screen'
    When I click on submit
    Then I should see the report 'Test Report' and all columns displayed to screen
   |Fields        |
   |Sort Name          |
   |Address Lines |
   |City          |
   |State/Province|
   |Postal Code   |
   |Sort Name     |
   |Date          |
   |Fund          |
   |Received      |


