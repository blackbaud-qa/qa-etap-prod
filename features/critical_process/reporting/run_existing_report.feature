@crit_proc3
Feature: Run existing report

  Background:
    Given I login into eTap for CP3

  Scenario: Run constituent address report
    Given I click on reports
    And I click on Manage Reports on the reports menu
    And I click on the system category
    And I click on run report next to the report Test
    And I click on the drop down box for query category Base
    And I click on the drop down box for query name All Constituents
    And I accept on the default report format 'Display Results on Screen'
    When I click on submit
    Then I should see the report title 'Test Report' and all columns displayed to screen




