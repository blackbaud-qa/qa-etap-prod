Feature: SEPA - 3 Export

  Background:
    Given I login as [USER]
    And account [A] contains a regularly scheduled direct debit (First and One off) for "this month"
    And account [B] contains a retry

#  Scenario: Verify validation on fields in step 1 of export
#    Given I click on Management and select SEPA Banking Export
#    When I click to step 2
#    Then I should see the following errors:
#    Export Type:  You must select a value.
#    Export Method: You must select a value.
#    Gift Date Range: You must select a value.
#    Export Mode: You must select a value.
#    Process Date: You must select a value.
#    Gift Status: You must select a value.

#  Scenario: Verify Process Date validation
#    Given I click OK
#    And I select these <values> from these <fields>
#    | values       | fields        |
#    | Retries Only | Export Type   |
#    | Standard     | Export Method |
#    | Live         | Export Mode   |
#    | "Today"      | Process Date  |
#    When I click Next
#    Then I should see the following error:
#    Process Date: This date must be in the future
#
#  Scenario: Verify Retry validation
#    Given I click OK
#    And I select these <values> from these <fields>
#      | values       | fields        |
#      | Retries Only | Export Type   |
#      | Standard     | Export Method |
#      | Live         | Export Mode   |
#      | "Tomorrow"   | Process Date  |
#    And click Next
#    And I see account [B] listed under Exportable Gifts
#    When I click Next
#    And open my file
#    Then I should see account [B]'s retry data
#
#  Scenario: Regularly scheduled debits + Retry validation (First and One Off)
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
#
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