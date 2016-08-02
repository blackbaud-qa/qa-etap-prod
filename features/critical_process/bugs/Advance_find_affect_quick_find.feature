Feature: Advanced find and Quick Find Account

  Background:
    Given I login into eTap for bugs

  Scenario: Advance Find and Quick Find Accounts
    When I click Accounts on the main menu
    And I click on Find an Account on the accounts menu
    And  I type 'Hammer' into the search field
    And I click Find
    Then I should see '16' results in Quick Find Results
    And I click Advanced Find
    And I type 'OH' into the State field on the Advanced Find Page
    And I click Find
    Then I should see '1' results in Advanced Find Results
    And I click on Quick Find
    And I click Find
    Then I should see '16' results in Quick Find Results
    And I click Advanced Find
    And I click Clear Form
    And I click on Quick Find
    And I click Find
    Then I should see '0' results in Quick Find Results
    And I click Advanced Find
    And I click Clear Form
    And I click Find
    Then I should see '0' results in Advanced Finnd Results