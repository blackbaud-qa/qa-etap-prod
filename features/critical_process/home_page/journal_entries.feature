@crit_proc
Feature: journal entries

  Scenario: Select a date from recent journal entries
    Given I am logged into eTap
    And I am on an account
    And I am on the home page
    When I click on transaction date from recent journal entries
    Then I should see the transaction on the journal page

  Scenario: Select last gift from the account giving summary
    Given I am logged into eTap
    And I am on an account
    And I am on the home page
    When I click on last gift on the account home page
    Then I should see the transaction on the journal page

  Scenario: select most recent gift from account 5 year summary
    Given I am logged into eTap
    And I am on an account
    And I am on the home page
    When I click on most recent year on the account five year summary table
    Then I should see all the transactions for most recent year
