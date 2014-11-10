Feature: Searching from quick find

  Scenario: Searching for an account, pressing Enter
    Given I am logged into eTap
    When I click on the Accounts menu
    And I select Find an Account
    And I type Jose into the search field
    And I press Enter on the keyboard
    Then Jose Berrios will show in the results

  Scenario: Searching for an account, clicking Find
    Given I am logged into eTap
    When I click on the Accounts menu
    And I select Find an Account
    And I type Jose into the search field
    And I click Find
    Then Jose Berrios will show in the results