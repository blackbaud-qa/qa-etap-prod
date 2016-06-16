@bugs
Feature: Running the Account Summary Report

  Background:
    Given I login into eTap for bugs

  Scenario: Running the Account Summary Report from an account when there is no image on the Home page
    When I click Accounts
    And I click on Find an Account on the accounts menu
    And I type 'Sally' into the search field
    And I click Find
    And I click on the 'Sally Jenkins' account
    And there should not be an uploaded photo in the Picture Tile
    And I am on the home page
    And I run the Generate Account Summary Report from the account's Home page
    Then the Account Summary Report for 'Sally Jenkins' should display on screen


  Scenario: Running the Account Summary Report from an account when there is an image on the Home page without an & in the name
    When I click Accounts
    And I click on Find an Account on the accounts menu
    And I type 'Sally' into the search field
    And I click Find
    And I click on the 'Sally Jenkins' account
    And I click 'Update' in the Picture Tile
    And I set the Account Image to one without an ampersand in the name
    And I am on the home page
    And I run the Generate Account Summary Report from the account's Home page
    And the Account Summary Report for 'Sally Jenkins' should display on screen
    And I click on the Accounts drop down
    And I click on the 'Sally Jenkins' account
    And I click 'Delete' in the Picture Tile
    Then there should not be an uploaded photo in the Picture Tile


  Scenario: Running the Account Summary Report from an account when there is an image on the Home page with an & in the name
    When I click Accounts
    And I click on Find an Account on the accounts menu
    And I type 'Sally' into the search field
    And I click Find
    And I click on the 'Sally Jenkins' account
    And I click 'Update' in the Picture Tile
    And I set the Account Image to one with an ampersand in the name
    And I am on the home page
    And I run the Generate Account Summary Report from the account's Home page
    And the Account Summary Report for 'Sally Jenkins' should display on screen
    And I click on the Accounts drop down
    And I click on the 'Sally Jenkins' account
    And I click 'Delete' in the Picture Tile
    Then there should not be an uploaded photo in the Picture Tile
