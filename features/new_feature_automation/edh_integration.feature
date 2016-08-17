@sprint
Feature: EDH Integration

  Background:
    Given I login into eTap for deeper regression

  Scenario: Navigate to Integrations section
    When I click Management on the main menu
    And I click on Integrations on the management menu
    Then I should be taken to the Integrations page

  Scenario:  EDH Integration - Setup
    When I click Management on the main menu
    And I click on Integrations on the management menu
    And I click on the Set up button on the integrations page
    Then I should see the set up EDH integration modal
    And I enter 'API KEY' in the API key field on the set up EDH integration modal
    And I enter 'lance.moore@blackbaud.com' in the notifications area on the set up EDH integration modal
    And I click next on the set up EDH integration modal
    And I set the default eTapestry Fund to 'General' on the set up EDH integration modal
    And I set the default eTapestry Campaign to 'Capital' on the set up EDH integration modal
    And I set the default eTapestry Approach to 'Personal Solicitation' on the set up EDH integration modal
    And I click next on the set up EDH integration modal
    And I click All historical data on the set up EDH integration modal
    Then the text on the Next button should change to 'Finish' on the set up EDH integration modal
    And I click next on the set up EDH integration modal
    Then I should be taken to the Integrations page
    And the Start import button should be enabled on the integrations page
#
  Scenario: EDH Integration - API key validation
    When I click Management on the main menu
    And I click on Integrations on the management menu
    And I click on the Edit set up button on the integrations page
    And I enter 'BAD API KEY' in the API key field on the set up EDH integration modal
    And I press Enter on the keyboard
    Then I should see the 'BAD API KEY' error on the set up EDH integration modal
    And the next button should be disabled on the set up EDH integration modal
    And the Save and Close button should be disabled on the set up EDH integration modal
    And I click cancel on the set up EDH integration modal
#
  Scenario: EDH Integration - Email Validation
    When I click Management on the main menu
    And I click on Integrations on the management menu
    And I click on the Edit set up button on the integrations page
    And I enter 'BAD EMAIL ADDRESS' in the notifications area on the set up EDH integration modal
    And I press Enter on the keyboard
    Then I should see the 'BAD EMAIL ADDRESS' error on the set up EDH integration modal
    And the next button should be disabled on the set up EDH integration modal
    And the Save and Close button should be disabled on the set up EDH integration modal
    And I click cancel on the set up EDH integration modal
#
  Scenario:  EDH Integration - Default Fund Validation
    When I click Management on the main menu
    And I click on Integrations on the management menu
    And I click on the Edit Mappings button on the integrations page
    And I set the default eTapestry Fund to '' on the set up EDH integration modal
    Then I should see the 'INVALID FUND' error on the set up EDH integration modal
    And the next button should be disabled on the set up EDH integration modal
    And the Save and Close button should be disabled on the set up EDH integration modal
    And I click cancel on the set up EDH integration modal

  Scenario:  EDH Links - Sign up
    When I click Management on the main menu
    And I click on Integrations on the management menu
    And I click on the EDH sign up link
    Then I should be taken to the EDH signup page
#
  Scenario: EDH Links - User Guide
    When I click Management on the main menu
    And I click on Integrations on the management menu
    And I click on the EDH user guide link
    Then I should be taken to the EDH user guide page



