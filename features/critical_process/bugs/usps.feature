@bugs
Feature: Looking up a Postal Code via USPS

  Background:
    Given I login into eTap for bugs

  Scenario: Looking up a Postal Code when adding a new account
    When I click Accounts
    And I click on Add Account on the find account screen
    And I set First Name to 'Harry' on the classic add account page
    And I set First Name to 'Stiles' on the classic add account page
    And I set Address Lines to '2000 Daniel Island Dr' on the classic add account page
    And I set City to 'Charleston' on the classic add account page
    And I set State to 'SC' on the classic add account page
    And I click on the USPS button
    And I switch to the new tab in my browser
    Then I should see '29492' returned as the postal code on USPS.com


  Scenario: Looking up a Postal Code when editing an existing account
    When I type '/9' into the dynamic search field
    And I press Enter on the keyboard
    And I click Personas
    And I click on the USPS button
    And I switch to the new tab in my browser
    Then I should see '48072' returned as the postal code on USPS.com
