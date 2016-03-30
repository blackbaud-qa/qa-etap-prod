#removing from bugs, I don't believe this scenario is valid any longer after the SKY updates.
Feature: Gift icon on Find Account results page

  Background:
    Given I am logged into eTap
    When I click Accounts on the main menu
    And I click on Find an Account on the accounts menu

  Scenario: Clicking gift icon on Find Account results page
    When I type '"Kevin Smith"' into the search field
    And I press Enter on the keyboard
    And I click the gift box icon
    Then I should see the new gift and pledge page

