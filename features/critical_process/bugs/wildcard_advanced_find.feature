@bugs
Feature: Wildcard in Advanced Find

  Background:
    Given I login into eTap for bugs

  Scenario: Using Wildcard with Advanced Find
    When I click Accounts
    And I click on Find an Account on the accounts menu
    And I click Advanced Find
    And I type 'Talisha Almond' into the Account Name field on the advanced find page
    And I type '*@blackbaud.com' into the Email field on the advanced find page
    And I click Find
    Then 'Talisha Almond' should show in the advanced find name results
    And I should see the message: '1 account found'