@bugs
Feature: Adding same UDF to DIY pave

    Background:
    Given a DIY form titled Duplicate UDF exists

  Scenario: Attempt to add same UDF to existing DIY page
    Given I am logged into eTap
    And I click Management on the main menu
    And I click on DIY Forms on the management menu
    And I click Edit for the form titled 'Duplicate UDF'
    And I click Add Item on the DIY editor page
    And I select Add Fields on the DIY editor page
    And I click the magnifying glass in the DIY Add Fields modal
    And I type 'Account Type' in the search field in the DIY Add Fields modal
    And I press Enter on the keyboard
    And I click Account Type UDF on the DIY editor page
    And I click Update on the Add Fields page
    When I click Add Item on the DIY editor page
    And I select Add Fields on the DIY editor page
    And I click the magnifying glass in the DIY Add Fields modal
    And I type 'Account Type' in the search field in the DIY Add Fields modal
    And I press Enter on the keyboard
    Then I should see Account Type as disabled in the DIY Add Fields modal