Feature: Adding a gift through quick gift entry

  Scenario: Add a gift through quick gift entry, searching by account name
    Given I am logged into eTap
    When I click Giving on the main menu
    And I click Search for an Account
#    And type Andrea into the search field
#    And click Find
#    And select Andrea Cooper
#    And set the date to 9/30/2090
#    And set the Received Amount to 500.00
#    And set the Fund to Unrestricted
#    And set the Campaign to Capital
#    And set the Approach to Direct Mail
#    And set the Gift Type to Check
#    And set the Check Date to 9/30/2090
#    And set the Check Number to 1346
#    And set the Tribute Information to Cindy Grant
#    And set the Soft Credit Information to Anne Hatch
#    And the Soft Credit Amount to 500.00
#    And click Save And Edit
#    Then the gift should save properly Andrea Cooper's account

  Scenario: Add a gift through quick gift entry, pulling by account number
    Given I am logged into eTap
    When I click Giving on the main menu
#    And set the Account Number field to 19
#    And tab into the Date field
#    And set the date to 9/15/2090
#    And set the Received Amount to 250
#    And set the Fund to Unrestricted
#    And set the Campaign to Capital
#    And set the Approach to Direct Mail
#    And set the Gift Type to Check
#    And set the Check Date to 9/15/2090
#    And set the Check Number to 473
#    And click Save And Edit
#    Then the gift should save properly on Patrica Whitten's account