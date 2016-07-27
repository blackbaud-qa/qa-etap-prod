@bugs
Feature: Searching from advanced find

  Background:
    Given I login into eTap for bugs

  Scenario: Searching by Name, pressing Enter
    When I click Accounts
    And I click on Find an Account on the accounts menu
    And I click Advanced Find
    And I type 'Smith' into the Name field
    And I press Enter on the keyboard
    And I click on 'Ed Smith' in the search results
    And I click the back button
    Then 'Smith' should show in the advanced find name results
