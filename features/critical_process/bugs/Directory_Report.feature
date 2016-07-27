
Feature: Run directory report
  Background:
    Given I login into eTap for bugs

  Scenario: Running directory report
    When I click Reports on the main menu
    And I click on eTapestry Standard Reports on the reports menu
    And I click on Directory Report on the reports menu
    And I click on the drop down box for query category Base
    And I click on the drop down box for query name All Constituents
    And I accept on the default report format 'PDF Document - Download'
    And I click on submit
    Then I should see the report downloaded




