Feature: Importing Constituent and Gift Information

  Scenario: running a successful gift import
    Given I am logged into eTap
    When I click Management on the main menu
    And I click Import
    And I click New Category on the Import Categories screen
    And I click Standard eTapestry Imports
    And I click New Import on the Standard eTapestry Imports screen
    And I set the Name to 'Constituent and Gift Import' on the Import screen
    And I click Browse on the Import screen
    And I select the file titled 'Constituent and Gift Import File' on the Import screen
    And I 