Feature: SEPA 5 - Import - MT940 File

  Background:
    Given I login as [USER]
    And I have run the SEPA export which contains data for account [B]
    And a MT940 file exists in my drop box
    And this file has been saved to my desktop

  Scenario: Successful Import
    Given I click on Giving - Banking Import
    And I select MT940
    And I click Choose File
    And I upload the MT940 file from my desktop
    And I select Preview
    And I see an Import Summary page
    When I click Run Import
    Then I should see the Summary Statistics page
    And the transaction count should be 2
    And there should be one Direct Debit Reversal
    And there should be one Invalid Payment Reference

  Scenario: Successful Import - Download Results
    Given I've run the MT940 import for the second time
    And I'm on step 3
    When I click Download Results
    Then a zipped file should be generated
    And it should contain one file labeled BankImportFailures_(today's date)
    And it should contain one file labeled BankImportSuccesses_(today's date)

  Scenario: Duplicate Import
    Given I click on Giving - Banking Import
    And I select MT940
    And I click Choose File
    And I upload the same MT940 file from my desktop
    And I select Preview
    And I see an Import Summary page
    When I click Run Import
    Then I should see the Summary Statistics page
    And the transaction count should be 2
    And there should be 2 Exceptions (1 Direct Debit Recurring Gift Already Reversed and 1 Invalid Payment Reference)

  Scenario: Duplicate Import - Download Results
    Given I've run the GMU02 import for the second time
    And I'm on step 3
    When I click Download Results
    Then a file should be generated
    And it should contain 2 Exceptions (1 Direct Debit Recurring Gift Already Reversed and 1 Invalid Payment Reference)

  Scenario: Verify Journal Entries
    Given I search for account [B]
    When I navigate to the journal page
    Then I should see 2 Recurring Gifts dated "tomorrow"
    And one recurring gift should be a reversal
