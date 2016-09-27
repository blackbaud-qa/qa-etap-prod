@sprint
Feature: EDH Integration - On Demand Import and Creating New Constituent Accounts

  # TODO: Update Fullhouse Database once EDH us unflagged

  Background:
    Given I login into eTap for CP3

  Scenario: EDH Integration - Run On Demand Import and Verify New Accounts
    When I click Management on the main menu
    And I click on Integrations on the management menu
    And I click the Resume Integration link on the set up EDH integration modal
    And I click import now on the everydayhero integration tile
    Then I wait for the edh import to finish successfully
    And I verify that an EDH Hero account was imported correctly
    And I verify that an EDH Participation was imported correctly
    And I verify that an EDH Donor account was imported correctly
    And I verify that an EDH CC Gift was imported correctly





