@sprint
Feature: EDH Integration - On Demand Import and Mulitple Participation Entries on One Account

  # TODO: Update Knightrider and Fullhouse Databases

  Background:
#    Given I login into eTap for CP5
    Given I login into eTap with values 'kim.kr.wealth', 'abc123'

  Scenario: EDH Integration - Run On Demand Import and Multiple Participation Entry Behavior
#    When I click Management on the main menu
#    And I click on Integrations on the management menu
#    And I click the Resume Integration link on the set up EDH integration modal
#    And I click import now on the everydayhero integration tile
#    Then I wait for the edh import to finish successfully
#    #TODO: change Background Information for all steps after groundzero and edh databases are set up for automation
    And I verify that multiple EDH Participations for a single Hero were imported correctly
    And I verify that I can manually add an additional Participation to a Hero who is already participating in a Fundraiser
    And I add an offline EDH gift to "xxx" in support of 'xxx'
    And I successfully merge two accounts with multiple Participations for the same Fundraiser
    And I verify that the Participation Summary report displays information properly


