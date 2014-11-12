Feature: Go to home from the accounts tab

  Scenario: Go to home from the home tab
    Given I logged into etapestry
    When I am on the landing page
    And I am on accounts
    And I click on the drop down arrow next to home
    When  I click on go to home
    Then I should be on the dashboard