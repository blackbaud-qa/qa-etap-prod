@crit_proc
Feature: SEPA 2 - Field validation and saving transactions

  Background:
    Given I am logged into eTap
    And I log out of eTap
    And I login into eTap with values 'automationbot.nl', 'spicypancakes1'

#    Given I login as [USER]
#    And the Federal ID Number under Management - My Organization is set to 123
#    And the following settings exist under Management - My Organization - Preferences:
#    IBAN: NL91ABNA0417164300
#    BIC: BNPAFRPP
#    Cancellation Terms (in days): 2
#    Export Batch Size: 1
#    Bank Account Number: 54321
#    Recurring Transaction Description: Recurring
#    Organization Short Name: AutomationBot NL

  Scenario: Default Process Type
    Given I go to the journal of account 'automation'
    When I select 'Recurring Gift Schedule' from the Add New... drop down menu
    Then I should be taken the the New Recurring Gift Schedule screen
    And the process type should default to SEPA

  Scenario: Required Fields - IBAN
    Given I go to the journal of account 'automation'
    When I select 'Recurring Gift Schedule' from the Add New... drop down menu
    And I populate the date field with yesterday
    And I click Save And to see the error
    Then I should see the 'The IBAN field is required.' error
    And I should close the javascript popup

  Scenario: Required Fields - Invalid IBAN
    Given I go to the journal of account 'automation'
    When I select 'Recurring Gift Schedule' from the Add New... drop down menu
    And I populate the date field with yesterday
    And I populate the IBAN field with 'NL91ABNA041716430X'
    And I click Save And to see the error
    Then I should see the 'The IBAN you entered is not valid.' error
    And I should close the javascript popup

  Scenario: Required Fields - Mandate Signature Date
    Given I go to the journal of account 'automation'
    When I select 'Recurring Gift Schedule' from the Add New... drop down menu
    And I populate the date field with yesterday
    And I populate the IBAN field with 'NL91ABNA0417164300'
    And I click Save And to see the error
    Then I should see the 'Mandate signature date missing.' error
    And I should close the javascript popup
    And the BIC field should be set to 'ABNANL2A'

  Scenario: Required Fields - Invalid Mandate Signature Date
    Given I go to the journal of account 'automation'
    When I select 'Recurring Gift Schedule' from the Add New... drop down menu
    And I populate the date field with yesterday
    And I populate the IBAN field with 'NL91ABNA0417164300'
    And I populate the Mandate Signature Date field with today
    And I click Save And to see the error
    Then I should see the 'Mandate signature date must be before the transaction date.' error
    And I should close the javascript popup

  Scenario: Required Fields - Empty Installment Amount and Fund
    Given I go to the journal of account 'automation'
    When I select 'Recurring Gift Schedule' from the Add New... drop down menu
    And I set the date to Today on the new pledge page
    And I populate the IBAN field with 'NL91ABNA0417164300'
    And I populate the Mandate Signature Date field with today
    And I click Save And to see the error
    Then I should see the 'This amount must contain a positive currency amount greater than zero.' error
    And I should see the 'Fund: This field must be completed prior to saving.' error
    And I should close the javascript popup

  Scenario: Successful save - Auto Mandate ID
#    Then all fields should save with appropriate data
#    And my page should refresh
#    And a unique mandate ID should appear
    Given I go to the journal of account 'automation'
    When I select 'Recurring Gift Schedule' from the Add New... drop down menu
    And I set the date to Today on the new pledge page
    And I populate the IBAN field with 'NL91ABNA0417164300'
    And I populate the Mandate Signature Date field with today
    And I set the Recurring Installment Amount to '25.00'
    And set the Fund to 'General'
    And I click Save And 'Edit'
    Then a unique mandate ID should appear

#
#  Scenario: Successful save - Manual Mandate ID
#    Given I'm in the Journal of account [A]
#    And I select Recurring Gift Schedule from the Add New drop down
#    And I check the box to manually enter the mandate ID
#    And I then populate the following <fields> with <values>
#    | fields                 | values             |
#    | date                   | "yesterday"        |
#    | Installment Amount     | 25                 |
#    | Fund                   | Algemeen           |
#    | First Installment      | 25                 |
#    | Frequency              | Monthly            |
#    | IBAN                   | NL91ABNA0417164300 |
#    | BIC                    | ABNANL2A           |
#    | Mandate ID             | test123            |
#    | Mandate Signature Date | "today"            |
#    When I click Save and Edit
#    Then all fields should save with appropriate data
#    And my page should refresh
#    And [test123] should appear in the mandate ID field








