@crit_proc
Feature: Adding a gift with payment type of credit card and process it

  Scenario: Adding and processing a credit card gift
    Given I am logged into eTap
    When I type 'Bob Barker' into the dynamic search field
    And I press Enter on the keyboard
    And I click on Bob Barker Junior in the search results
    And I click Journal
    And select Gift/Pledge from the Add New... drop down menu
    And set the date to '10/30/2090'
    And set the Received Amount to '7.00'
    And set the Non-Deductible Amount to '5.00'
    And set the Fund to 'Unrestricted'
    And set the Campaign to 'Annual'
    And set the Approach to 'Unsolicited'
    And set the Gift Type to Credit/Debit Card
    And set the Credit/Debit Card Number to '4111111111111111'
    And set the Expiration Month to '12'
    And set the Expiration Year to '2034'
    And click Save
    And select Process Transaction from the drop down menu
    And click yes when the notification pops up
    And wait for the journal page to display
    And I click on the Gift listed in the journal
    And the Received Amount should be set to '$7.00'
    And the Non-Deductible Amount should be set to the '$5.00'
    And the Fund should be set to 'Unrestricted'
    And the Campaign should be set to 'Annual'
    And the Approach should be set to 'Unsolicited'
    And I click Delete on the transaction page
    Then I should see the message 'No Journal Entries Found' on the journal page

