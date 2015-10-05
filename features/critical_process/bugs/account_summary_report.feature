Feature: Running the Account Summary Report

  Scenario: Running the Account Summary Report from an account without an image
    Given I am logged into eTap
    When I click Accounts
    And I type 'Sally' into the search field
    And I click Find
    And I click on the 'Sally Jenkins' account
    And I run the Generate Account Summary Report from the account's Home page



#  Scenario: Running the Account Summary Report from an account with an image without an & in the name
#    Given I am logged into eTap
#    When I click Accounts
#
#
#  Scenario: Running the Account Summary Report from an account without an image with an & in the name
#    Given I am logged into eTap
#    When I click Accounts