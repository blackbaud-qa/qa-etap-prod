@crit_proc10
Feature: Testing payments and pledges

  Background:
  Given I login into eTap for CP10

  Scenario: Add a pledge from the journal page
    When I type 'Raymond Barnes' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'Raymond Barnes' in the search results
    And I click Journal
    And I delete the existing transactions in the journal
    And select Gift/Pledge from the Add New... drop down menu
    And I set the date to Today on the new pledge page
    And I set the Pledged Amount to '240'
    And click Tab
    And I click into the Received Amount field
    And set the Fund to 'Unrestricted'
    And set the Campaign to 'Annual'
    And set the Approach to 'Direct Mail'
    And I click on the Pledge Information section on the transaction page
    And I mark the checkbox next to Copy Pledge Defined Fields on Future Payments
    And I click Create Pledge Schedule on the new pledge page
    And I set the Frequency to 'Monthly (12)'
    And I set the First Installment Date to Today
    And I set the Installment Amount to '$10.00'
    And I click on the User Defined Fields section on the new payment page
    And I set the UDF 'Ticket Quantity A' to '4' on the new payment page
    And I click Save And 'Edit'
    And I click Add a Payment for this Pledge
    And I click on the Gift Types section on the new payment page
    And I set the Check Date to Today on the new payment page
    And I set the Check number to '233' on the new payment page
    And I click Save And 'Edit'
    And I click on the User Defined Fields section on the new payment page
    And I should see 'Ticket Quantity A' set to '4' on the payment page
    And I click Delete on the transaction page
    And I click Pledge on the journal page
    And I click Delete on the transaction page
#    And I click More Options on the journal page
    And I click the Filters icon
    And I click Clear button on the journal filter
    And I mark the checkbox next to Pledge on the journal page
    And I click Find on the journal page
    Then I should see the message '0 Journal Entries' on the journal page




