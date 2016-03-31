@crit_proc2
Feature: Edit Custom Report

  Background:
    Given I login into eTap for CP2

  Scenario: Edit the custom report name
    Given I click on reports
    And I click on Manage Reports on the reports menu
    And I click on the system category
    And I click on the name of the report 'Test Report'
    And I set the name to 'Test 1' on the edit report page
    When I click save on the edit report page
    Then I should see the report renamed to 'Test 1'
    And I rename the report to 'Test Report' for future tests

  Scenario: Edit Report Sort
    When I click on reports
    And I click on Manage Reports on the reports menu
    And I click on the system category
    And I click on the name of the report 'Test Report'
    And I click on the plus next to Sort Name on the edit report page
#    And I choose the sort order Z on the edit report page
    And I click save on the edit report page
    And I click on Run Report under the report 'Test Report'
    And I click on the drop down box for query category Base
    And I click on the drop down box for query name All Constituents
    And I accept on the default report format 'Display Results on Screen'
    And I click on submit
#    Then I should see the report displayed to screen with the sort order of Z through A

  Scenario: Group Report
    When I click on reports
    And I click on Manage Reports on the reports menu
    And I click on the system category
    And I click on the name of the report 'Test Report'
    And I click on the drop down next to the field Group Report on the edit report page
    And I select 'Account' for the Group Report field on the edit report page
    And I click save on the edit report page
    And I click on Run Report under the report 'Test Report'
    And I click on the drop down box for query category Base
    And I click on the drop down box for query name All Constituents
    And I accept on the default report format 'Display Results on Screen'
    And I click on submit
#    Then I should see the report displayed to screen with the grouping by account
#
  Scenario: Delete Field name
    When I click on reports
    And I click on Manage Reports on the reports menu
    And I click on the system category
    And I click on the name of the report 'Test Report'
    And I click on the X next to the field State
    And I click save on the edit report page
    And I click on Run Report under the report 'Test Report'
    And I click on the drop down box for query category Base
    And I click on the drop down box for query name All Constituents
    And I accept on the default report format 'Display Results on Screen'
    And I click on submit
    Then I should see the report displayed to screen without the State field



