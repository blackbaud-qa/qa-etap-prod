Feature: SEPA 2 - Field validation and saving transactions

  Background:
    Given I login as [USER]
    And the Federal ID Number under Management - My Organization is set to 123
    And the following settings exist under Management - My Organization - Preferences:
    IBAN: NL91ABNA0417164300
    BIC: BNPAFRPP
    Cancellation Terms (in days): 2
    Export Batch Size: 1
    Bank Account Number: 54321
    Recurring Transaction Description: Recurring
    Organization Short Name: AutomationBot NL

  Scenario: Default Process Type
    Given I'm in the journal of account [A]
    When I select Recurring Gift Schedule from the Add New drop down
    Then I should be taken the the New Recurring Gift Schedule screen
    And my process type should default to SEPA

  Scenario: Required Fields - IBAN
    Given I populate the date field with "yesterday"
    When I click Save and
    Then I should see the following error:  The IBAN field is required.

  Scenario: Required Fields - Invalid IBAN
    Given I click OK
    And I then populate the IBAN field with NL91ABNA041716430X
    When I click Save and
    Then I should see the following error:  The IBAN you entered is not valid.

  Scenario: Required Fields - Mandate Signature Date
    Given I click OK
    And I then populate the IBAN field with NL91ABNA0417164300
    When I click Save and
    Then the BIC field should populate with [ABNANL2A]
    And I should see the following error:  Mandate signature date missing.

  Scenario: Required Fields - Invalid Mandate Signature Date
    Given I click OK
    When I then populate the Mandate Signature Date field with "today"
    And click Save and
    Then I should see the following error:  Mandate signature date must be before the transaction date.

  Scenario: Required Fields - Empty Installment Amount and Fund
    Given I click OK
    And I then populate the Mandate signature date field with "today"
    When I click Save and
    Then I should see the following errors:
    Installment Amount:  This amount must contain a positive currency amount greater than zero.
    Fund:  This field must be completed prior to saving.

  Scenario: Successful save - Auto Mandate ID
    Given I click OK
    And I then populate the following <fields> with <values>
    | fields             | values   |
    | Installment Amount | 25       |
    | Fund               | Algemeen |
    When I click Save and Edit
    Then all fields should save with appropriate data
    And my page should refresh
    And a unique mandate ID should appear

  Scenario: Successful save - Manual Mandate ID
    Given I'm in the Journal of account [A]
    And I select Recurring Gift Schedule from the Add New drop down
    And I check the box to manually enter the mandate ID
    And I then populate the following <fields> with <values>
    | fields                 | values             |
    | date                   | "yesterday"        |
    | Installment Amount     | 25                 |
    | Fund                   | Algemeen           |
    | First Installment      | 25                 |
    | Frequency              | Monthly            |
    | IBAN                   | NL91ABNA0417164300 |
    | BIC                    | ABNANL2A           |
    | Mandate ID             | test123            |
    | Mandate Signature Date | "today"            |
    When I click Save and Edit
    Then all fields should save with appropriate data
    And my page should refresh
    And [test123] should appear in the mandate ID field








