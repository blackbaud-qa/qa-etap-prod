Feature: Verify create a case link

  Background:
    Given I login into eTap for CP1


  Scenario: Verify case central link
    When I click on Help on the home menu
    And I click on case central
    Then I should navigate to Case Central Page
