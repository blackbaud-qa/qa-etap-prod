@sprint
Feature: EDH Integration - On Demand Import and Creating New Constituent Accounts

  # TODO: Update Knightrider and Fullhouse Databases

  Background:
#    Given I login into eTap for CP3
    Given I login into eTap with values 'kim.kr.wealth', 'abc123'

  Scenario: EDH Integration - Run On Demand Import and Verify New Accounts
    When I click Management on the main menu
    And I click on Integrations on the management menu
    And I click the Resume Integration link on the set up EDH integration modal
    And I click import now on the everydayhero integration tile
    Then I wait for the edh import to finish successfully
    #TODO: change Background Information for all steps after groundzero and edh databases are set up for automation
    And I verify that an EDH Hero account was imported correctly
    And I verify that an EDH Participation was imported correctly
    And I verify that an EDH Donor account was imported correctly
    And I verify that an EDH CC Gift was imported correctly
#   #TODO: Are the next to steps testable?
#    And I verify that an EDH Offline Gift was imported correctly
#    And I verify that an EDH PayPal Gift was imported correctly




