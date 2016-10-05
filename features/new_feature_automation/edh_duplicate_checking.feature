@sprint
Feature: EDH Integration - Duplicate Checking

  # TODO: Update Fullhouse Database once EDH us unflagged

  Background:
    Given I log out of eTap
    Given I login into eTap for CP4

  Scenario: EDH Integration - Run On Demand Import and Verify Duplicate Checking
    When I click Management on the main menu
    And I click on Integrations on the management menu
    And I click the Resume Integration link on the set up EDH integration modal
    And I click import now on the everydayhero integration tile
    And I wait for the edh import to finish successfully
    Then I verify that a existing EDH Hero was matched correctly
    And I verify that a existing EDH Donor was matched correctly
    And I verify that EDH Hero was matched to an existing constituent account correctly
    And I verify that EDH Donor was matched to an existing constituent account correctly


