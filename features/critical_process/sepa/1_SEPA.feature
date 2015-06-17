Feature: SEPA 1 - Setting Preferences

#  Background:
#    Given I login as [USER]

  Scenario:  Adding Federal ID Number

    Given I log out of eTap
    And I login into eTap with values 'automationbot.nl', 'spicypancakes1'
#    And I've clicked Management - My Organization
    And I click Management on the main menu
    And I click on My Organization on the management page
    And I enter '123' in the Federal ID field
    And I click Save and Go to Personas on the My Organization page
    Then '123' should save in the Federal ID field
#    And I should be take to the Personas page

#  Scenario: Empty Required Organization Preferences
#    Given I've clicked Management - My Organization - Preferences
#    When I leave the following <fields> empty
#      | fields                            |
#      | IBAN                              |
#      | BIC                               |
#      | Cancellation Terms (in days)      |
#      | Recurring Transaction Description |
#    And click Save and Go to Personas
#    Then I should see the following errors:
#    IBAN: This field must be completed prior to saving.
#    BIC: This field must be completed prior to saving.
#    Cancellation Terms (in days): This field must be completed prior to saving.
#    Recurring Transaction Description: This field must be completed prior to saving.

#  Scenario: Invalid Organization Preferences - IBAN
#    Given I've clicked Management - My Organization - Preferences
#    When I enter these <values> in these <fields>
#      | values             | fields                            |
#      | NL91ABNA04171643XX | IBAN                              |
#      | ABNANL2A           | BIC                               |
#      | 1                  | Cancellation Terms (in days)      |
#      | 1                  | Export Batch Size                 |
#      | 54321              | Bank Account Number               |
#      | Recurring          | Recurring Transaction Description |
#      | AutomationBot NL   | Organization Short Name           |
#    And click Save and Go to Personas
#    Then I should see the following error: IBAN:  The IBAN you entered is not valid.
#
#  Scenario: Adding My Organization Preferences
#    Given I've clicked Management - My Organization - Preferences
#    When I enter these <values> in these <fields>
#    | values             | fields                            |
#    | NL91ABNA0417164300 | IBAN                              |
#    | ABNANL2A           | BIC                               |
#    | 1                  | Cancellation Terms (in days)      |
#    | 1                  | Export Batch Size                 |
#    | 54321              | Bank Account Number               |
#    | Recurring          | Recurring Transaction Description |
#    | AutomationBot NL   | Organization Short Name           |
#    And click Save and Go to Personas
#    Then all of the above values should save
#    And I should be taken to the Personas page