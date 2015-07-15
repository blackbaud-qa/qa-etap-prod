Feature: SEPA 4 - Import - GMU02 File

  Background:
    Given I login as [USER]
    And I have run the SEPA export which contains data for account [A]
    And a GMU02 file exists in my drop box
    And this file has been saved to my desktop

  Scenario: Successful Import
    Given I click on Giving - Banking Import
    And I leave GMU01 or GMU02 selected
    And I click Choose File
    And I upload the GMU02 file from my desktop
    And I select Preview
    And I see an Import Summary page
    When I click Run Import
    Then I should see the Summary Statistics page
    And the transaction count should be 2
    And there should be one Direct Debit Reversal
    And there should be one Credit Transfer

  Scenario: Successful Import - Download Results
    Given I've run the GMU02 import
    And I'm on step 3
    When I click Download Results
    Then a file should be generated
    And it should contain a Direct Debit Reversal
    And it should contain a Credit Transfer

  Scenario: Duplicate Import
    Given I click on Giving - Banking Import
    And I leave GMU01 or GMU02 selected
    And I click Choose File
    And I upload the same GMU02 file from my desktop
    And I select Preview
    And I see an Import Summary page
    When I click Run Import
    Then I should see the Summary Statistics page
    And the transaction count should be 2
    And there should be one Credit Transfer
    And there should be one Exception

    #Excluding this for now, since we don't have a good way to open zip files
#  Scenario: Duplicate Import - Download Results
#    Given I've run the GMU02 import for the second time
#    And I'm on step 3
#    When I click Download Results
#    Then a zipped file should be generated
#    And it should contain one file labeled BankImportFailures_(today's date)
#    And it should contain one file labeled BankImportSuccesses_(today's date)

  Scenario: Verify Journal Entries
    Given I search for account [A]
    When I navigate to the journal page
    Then I should see 2 gifts dated "today"
    And I should see 1 Recurring Gifts dated "tomorrow"
    And I should see 1 Reccuring Gift Reversal dated "tomorrow"


