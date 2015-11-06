@crit_proc2
Feature: SEPA - 3 Export

  Background:
    Given I am logged into eTap
    And I log out of eTap
    And I login into eTap with values 'automationbot.nl', 'spicypancakes1'

#    Given I login as [USER]
#    And account [A] contains a regularly scheduled direct debit (First and One off) for "this month"
#    And account [B] contains a retry

  Scenario: Verify validation on fields in step 1 of export
    Given I click Management on the main menu
    And I click Standard Exports on the management page
    And I click SEPA Banking Export on the management page
    When I click next on the SEPA banking export screen
    Then I should see the 'Export Type: You must select a value.' pop up error
    And I should see the 'Export Method: You must select a value.' pop up error
    And I should see the 'Gift Date Range: You must select a value.' pop up error
    And I should see the 'Export Mode: You must select a value.' pop up error
    And I should see the 'Process Date: You must select a value.' pop up error
    And I should see the 'Gift Status: You must select at least one option' pop up error
    And I should close the pop up error

  Scenario: Verify Process Date validation
    Given I click Management on the main menu
    And I click Standard Exports on the management page
    And I click SEPA Banking Export on the management page
    And I select Retries Only for the Export Type field
    And I select Standard for the Export Method field
    And I select Live for the Export Mode field
    And I select Today for the Process Date field
    And I click next on the SEPA banking export screen
    Then I should see the 'Process Date: The date must be in the future' pop up error
    And I should close the pop up error

#
  Scenario: Verify Retry validation
    Given I click Management on the main menu
    And I click Standard Exports on the management page
    And I click SEPA Banking Export on the management page
    And I select Retries Only for the Export Type field
    And I select Standard for the Export Method field
    And I select Live for the Export Mode field
    And I select Tomorrow for the Process Date field
    And I click next on the SEPA banking export screen
    Then I see 'automation' listed under Exportable Gifts
#
     #Currently don't have a good way of reading the full file
#    When I click next on the SEPA banking export screen
#    And open my file
#    Then I should see account [B]'s retry data
#


  Scenario: Regularly scheduled debits + Retry validation (First and One Off)
    Given I click Management on the main menu
    And I click Standard Exports on the management page
    And I click SEPA Banking Export on the management page
    And I select Regularly Scheduled Direct Debits for the Export Type field
    And I select Custom for the Export Method field
    And I select 'Base' for the Category field
    And I select 'All Constituents - A' for the Query field
    And I select This Month for the Gift Date Range field
    And I select Live for the Export Mode field
    And I set First and One Off for the Gift Status field
    And I select Tomorrow for the Process Date field
    And I click next on the SEPA banking export screen
    Then I see 'automation' listed under Exportable Gifts

   #Currently don't have a good way of reading the full file
#    When I click Next
#    And open my file
#    Then I should see account [A]'s recurring gift data



  #This appears to be a duplicate of the test above
#  Scenario: Regularly scheduled debits + Retry validation (Recurring)
#    Given I click on Management and select SEPA Banking Export
#    And I select these <values> from these <fields>
#    | values                                      | fields          |
#    | Regularly Scheduled Direct Debits + Retries | Export Type     |
#    | Custom                                      | Export Method   |
#    | Base                                        | Category        |
#    | All Constituents                            | Query           |
#    | This Month                                  | Gift Date Range |
#    | Live                                        | Export Mode     |
#    | First and One-Off                           | Gift Status     |
#    | Live                                        | Export Mode     |
#    | "tomorrow"                                  | Process Date    |
#    And click Next
#    And I see account [A] listed under Exportable Gifts
#    When I click Next
#    And open my file
#    Then I should see account [A]'s recurring gift data