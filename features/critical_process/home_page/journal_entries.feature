Feature: journal entries

  Scenario: select a date from recent journal entries
    Given I logged into etapestry
    And I am on an account
    And I am on the home page
    When I click on transaction date from recent journal entries
    Then I should see the transaction on the journal page

  Scenario: select last gift from the account giving summary
    Given I logged into etapestry
    And I am on an account
    And I am on the home page
    And I am on the account giving summary tile
    When I click on last gift
    Then I should see the transaction on the journal page

  Scenario: select most recent gift from account 5 year summary
    Given I logged into etapestry
    And I am on an account
    And I am on the home page
    And I am on the account five year summary
    When I click on most recent year
    Then I should see all the transactions for most recent year
