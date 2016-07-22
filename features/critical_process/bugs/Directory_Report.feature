@bugs
Feature: Run directory report
  Background:
    Given I login into eTap for bugs

  Scenario: Running directory report
    When I click Reports on the main menu
    And I click on eTapestry Standard Reports on the reports menu
    And I click on directory report
    And I select 'Base' for the Category field
    And I select 'All Constituents' for the Query field
    And I select 'PDF document-Download' for the report format
    And I click on submit
    Then I should see generating Directory Document page


