@crit_proc
Feature: Adding a gift with payment type of check

  Scenario: Add a gift from the journal page, no dollar sign in received amount
    Given I am logged into eTap
    When I type 'Jon Snow' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'Jon Snow' in the search results
    And I click Journal
    And select Gift/Pledge from the Add New... drop down menu
    And set the date field to '11/30/2090'
    And set the Received Amount field to '10.00'
    And set the Fund to 'General'
    And set the Campaign to 'Capital'
    And set the Approach to 'Unsolicited'
    And set the Gift Type to Check
    And set the Check Date to '11/30/2090'
    And set the Check Number to '879'
    And I set the Tribute Information to 'Cindy Grant'
    And I set the Soft Credit Information to 'Anne Hatch'
    And the Soft Credit Amount to '10'
    And I click Save And 'Edit'
    And the Received Amount should be set to '$10.00'
    And the Non-Deductible Amount should be set to the '$0.00'
    And the Fund should be set to 'General'
    And the Campaign should be set to 'Capital'
    And the Approach should be set to 'Unsolicited'
    And the Check Date should be set to '11/30/2090'
    And the Check Number should be set to '879'
    And I click the Tribute bar
    And the Tribute Information should be set to 'Cindy Grant'
    And the Soft Credit Information should be set to 'Anne Hatch'
    And the Soft Credit Amount should be set to '$10.00'
    And I click Delete on the transaction page
    Then I should see the message 'No Journal Entries Found' on the journal page


  Scenario: Add a gift from the journal page, include a dollar sign in received amount
    Given I am logged into eTap
    When I type 'Jon Snow' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'Jon Snow' in the search results
    And I click Journal
    And select Gift/Pledge from the Add New... drop down menu
    And set the date field to '9/2/2090'
    And set the Received Amount field to '$100.00'
    And set the Fund to 'General'
    And set the Campaign to 'Capital'
    And set the Approach to 'Unsolicited'
    And set the Gift Type to Check
    And set the Check Date to '9/2/2090'
    And set the Check Number to '879'
    And I set the Tribute Information to 'Cindy Grant'
    And I set the Soft Credit Information to 'Anne Hatch'
    And the Soft Credit Amount to '$50.00'
    And I click on the User Defined Fields section on the new payment page
    And I set the UDF 'Ticket Quantity A' to '85' on the new payment page
    And I click Save And 'Edit'
    And the Received Amount should be set to '$100.00'
    And the Non-Deductible Amount should be set to the '$0.00'
    And the Fund should be set to 'General'
    And the Campaign should be set to 'Capital'
    And the Approach should be set to 'Unsolicited'
    And the Check Date should be set to '9/2/2090'
    And the Check Number should be set to '879'
    And I click the Tribute bar
    And the Tribute Information should be set to 'Cindy Grant'
    And the Soft Credit Information should be set to 'Anne Hatch'
    And the Soft Credit Amount should be set to '$50.00'
    And I click on the User Defined Fields section on the new payment page
    And I should see 'Ticket Quantity A' set to '85' on the payment page
    And I click Delete on the transaction page
    Then I should see the message 'No Journal Entries Found' on the journal page
