@bugs
Feature: Moving Values From User Defined Field
  Background:
    Given I login into eTap for bugs

  Scenario: Moving Values From user Defined Field
    When I click Management on the main menu
    And I click on User Defined Fields on the management menu
    And I click the Base UDF category on the Edit User Defined Fields page
    And I click Account Type on the UDF page
    And I click the Move Values link
    And I click the Business checkbox
    And I click the Attributes radio button
    And I click the Move button
    Then I should see the Edit User Defined Field Categories page
