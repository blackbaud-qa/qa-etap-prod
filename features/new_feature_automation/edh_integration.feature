@sprint

Feature: EDH Integration

  Background:
    Given I login into eTap for deeper regression

  Scenario: Navigate to Integrations section
    When I click Management on the main menu
    And I click on Integrations on the management menu
    Then I should be taken to the Integrations page




