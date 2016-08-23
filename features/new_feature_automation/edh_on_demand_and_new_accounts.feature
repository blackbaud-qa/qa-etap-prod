@sprint
Feature: EDH Integration - On Demand Import and Creating New Constituent Accounts

  Background:
    Given I login into eTap for CP2

  Scenario: EDH Integration - Run On Demand Import and Verify New Accounts
    When I click Management on the main menu
    And I click on Integrations on the management menu
#   TODO: Update variable on backend steps for step below
    And I set up EDH so that I can run an on demand import
#    And I set up EDH so that I can run an on demand import
    And I click the Start import button on the integrations page
    And I click import now on the everydayhero integration tile
    Then I wait for the edh import to finish successfully
    And I verify that a Hero was imported correctly
    And I verify that a Donor was imported correctly
    And I verify that an Organization was imported correctly


  Scenario: EDH Integration - Run On Demand Import and Verify Duplicate Checking
    When I click Management on the main menu
    And I click on Integrations on the management menu
    And the EDH integration has been set up
    And I verify that an edh import has already been processed today
    Then I verify that a duplicate Hero was matched correctly
    And I verify that a duplicate Donor was matched correctly
    And I verify that an Organization was matched correctly


