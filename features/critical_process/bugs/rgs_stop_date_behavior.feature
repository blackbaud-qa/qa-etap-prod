@bugs
Feature: RGS and stop date behavior

  Background:
    Given I login into eTap for CP7


  Scenario: Verify recurring gift can be added with future stop date/can't be added to manual RGS with past stop date
    When I create a manual recurring gift schedule
    And I click Save And 'Edit'
    And I enter a stop date of '01/01/2025' on the recurring gift schedule
    Then I should be able to add a recurring gift to the recurring gift schedule
    And I click on the 'Recurring Gift Schedule' in the journal
    And I enter a stop date of '01/01/2015' on the recurring gift schedule
    Then I should not be able to add a recurring gift to the recurring gift schedule
