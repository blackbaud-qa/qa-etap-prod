@bugs
Feature: Moving UDF Values
  Background:
    Given I am logged into eTap

  Scenario: Moving UDF Values
    Given I am logged into eTap
    When I click Management on the main menu
    And I click User Defined Fields on the management menu
    And I click the Base UDF category on the Edit User Defined Fields page
    And I click Account Type on the UDF page
    And I click the Move Values link
    And I click the Business checkbox
    And I click the Attributes radio button
    And I click the Move button
    And I click the Base UDF category on the Edit User Defined Fields page
    And I click Attributes on the UDF page
    And I click the Move Values link
    And I click the Business checkbox
    And I click the Account Type radio button
    And I click the Move button
    Then I should see the Edit User Defined Field Categories page



