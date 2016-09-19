@sprint
Feature: EDH Integration - On Demand Import and Creating New Constituent Accounts

  # TODO: Update Knightrider and Fullhouse Databases

  Background:
    Given I login into eTap for CP3

  Scenario: EDH Integration - Run On Demand Import and Verify New Accounts
    When I click Management on the main menu
    And I click on Integrations on the management menu
#    And the EDH integration has been set up
    #TODO: update import now link placeholder
    And I click import now on the everydayhero integration tile
    Then I wait for the edh import to finish successfully
    #TODO: change Hero Information after groundzero and edh databases are set up for automation
    And I verify that an EDH Hero account was imported correctly
    #TODO: change Hero Information after groundzero and edh databases are set up for automation
    And I verify that an EDH Participation was imported correctly
    #TODO: change Hero Information after groundzero and edh databases are set up for automation
    And I verify that an EDH Donor account was imported correctly
    And the date should be set to '9/1/2016'
    





  Scenario: EDH Integration - Run On Demand Import and Verify Duplicate Checking
    When I click Management on the main menu
    And I click on Integrations on the management menu
#    And the EDH integration has been set up
    And I verify that an edh import has already been processed today
    Then I verify that a duplicate Hero was matched correctly
    And I verify that a duplicate Donor was matched correctly



