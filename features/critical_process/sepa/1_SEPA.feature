Feature: SEPA 1 - Setting Preferences

  Background:
    Given I am logged into eTap
    And I log out of eTap
    And I login into eTap with values 'automationbot.nl', 'spicypancakes1'

  Scenario:  Adding Federal ID Number
    Given I click Management on the main menu
    And I click on My Organization on the management page
    And I enter '123' in the Federal ID field
    And I click Save and Go to Personas on the My Organization page
    Then '123' should save in the Federal ID field


  Scenario: Empty Required Organization Preferences
    Given I click Management on the main menu
    And I click on My Organization on the management page
    And I click on Preferences on the My Organization page
    When I leave the IBAN field empty
    And I leave the BIC field empty
    And I live the Cancellation Terms field empty
    And I leave the Recurring Transaction Description field empty
    And I click Save and Go to Personas on the My Organization page
    Then I should see the 'IBAN' error
    And I should see the 'BIC' error
    And I should see the 'Cancellation Terms' error
    And I should see the 'Recurring Transaction Description' error
    And I should close the javascript popup


  Scenario: Invalid Organization Preferences - IBAN
    Given I click Management on the main menu
    And I click on My Organization on the management page
    And I click on Preferences on the My Organization page
    When I enter 'NL91ABNA04171643XX' for the IBAN field
    And I enter 'ABNANL2A' for the BIC field
    And I enter '1' for the Cancellation Terms field
    And I enter '1' for the Export Batch Size field
    And I enter '54321' for the Bank Account Number field
    And I enter 'Recurring' for the Recurring Transaction Description field
    And I enter 'AutomationBot NL' for the Organization Short Name field
    And I click Save and Go to Personas on the My Organization page
    Then I should see the 'IBAN: The IBAN you entered is not valid.' error
    And I should close the javascript popup


  Scenario: Adding My Organization Preferences
    Given I click Management on the main menu
    And I click on My Organization on the management page
    And I click on Preferences on the My Organization page
    When I enter 'NL91ABNA0417164300' for the IBAN field
    And I enter 'ABNANL2A' for the BIC field
    And I enter '1' for the Cancellation Terms field
    And I enter '1' for the Export Batch Size field
    And I enter '54321' for the Bank Account Number field
    And I enter 'Recurring' for the Recurring Transaction Description field
    And I enter 'AutomationBot NL' for the Organization Short Name field
    And I click Save and Go to Personas on the My Organization page
    And I click on Preferences on the My Organization page
    Then 'NL91ABNA0417164300' should save in the IBAN field
    And 'ABNANL2A' should save in the BIC field
    And '1' should save in the Cancellation Terms field
    And '1' should save in the Export Batch Size field
    And '54321' should save in the Bank Account Number field
    And 'Recurring' should save in the Recurring Transaction Description field
    And 'AutomationBot NL' should save in the Organization Short Name field
