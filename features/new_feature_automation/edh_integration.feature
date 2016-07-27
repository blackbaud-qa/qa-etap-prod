@sprint

Feature: EDH Integration

  Background:
    Given I login into eTap for deeper regression

  Scenario: Navigate to Integrations section
    When I click Management on the main menu
    And I click on Integrations on the management menu
    Then I should be taken to the Integrations page

  Scenario:  EDH Setup - Get Started
    When I click Management on the main menu
    And I click on Integrations on the management menu
    And I click on the Get Started button on the integrations page
    Then I should see the Basic integration settings modal
    And I enter '<api key data>' in the API key field on the basic integration modal
    And I enter 'lance.moore@blackbaud.com' in the notifications area on the basic integration modal
    And I click Save on the basic integration modal
    Then I should see 'Settings complete' on the integrations page

  Scenario:  EDH Setup - Map Campaigns
    When I click Management on the main menu
    And I click on Integrations on the management menu
    And I click on the Map Campaigns button on the integrations page
    Then I should see the EDH campaign mappings modal
    And I set the default eTapestry Fund to '' on the EDH campaign mappings modal
    And I set the default eTapestry Campaign to '' on the EDH campaign mappings modal
    And I set the default eTapestry Approach to '' on the EDH campaign mappings modal
    And I click Save on the EDH campaign mappings modal
    Then I should see 'Mapping complete' on the integrations page

  Scenario:  EDH Setup - Historical Data Import
    When I click Management on the main menu
    And I click on Integrations on the management menu
    And I click on the Select Historical Data button on the integrations page
    Then I should see the EDH historical data import modal
    And I click All historical data on the EDH historical data import modal
    And I click Save on the EDH historical data import modal
    Then I should see 'Historical data settings complete' on the integrations page

  Scenario:  EDH Setup - Import Enabled
    When I click Management on the main menu
    And I click on Integrations on the management menu
    And I should see '3/3 steps complete!' on the integrations page
    Then I should see the Import button on the integrations page


  Scenario:  EDH Links - Sign up
    When I click Management on the main menu
    And I click on Integrations on the management menu
    And I click on the EDH sign up link
    Then I should be taken to the EDH signup page

  Scenario: EDH Links - User Guide
    When I click Management on the main menu
    And I click on Integrations on the management menu
    And I click on the EDH user guide link
    Then I should be taken to the EDH user guide page



