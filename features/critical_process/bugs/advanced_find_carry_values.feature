@bugs
Feature: Carrying over values from Advanced Find screen when adding account

  Background:
    Given I login into eTap for bugs

  Scenario: Adding Account from Advanced Find page
    When I click Accounts
    And I click on Find an Account on the accounts menu
    And I click Advanced Find
    And I type 'Lawrence' into the Account Name field on the advanced find page
    And I type 'kristin.lawrence@blackbaud.com' into the Email field on the advanced find page
    And I type '1234 Main Street' into the Address Lines field on the advanced find page
    And I type 'IN' into the State field on the advanced find page
    And I type '46205' into the Postal Code field on the advanced find page
    And I type '5551236589' into the Phone Number field on the advanced find page
    And I type 'Indianapolis' into the City field on the advanced find page
    And I click Find
    And I click Add an Account on the Advanced Find page
    Then the Last Name should be set to 'Lawrence'
    And the Address Lines should be set to '1234 Main Street'
    And the City should be set to 'Indianapolis'
    And the State should be set to 'IN'
    And the Postal Code should be set to '46205'
    And the Voice should be set to '5551236589'
    And the Email field should be set to 'kristin.lawrence@blackbaud.com'

