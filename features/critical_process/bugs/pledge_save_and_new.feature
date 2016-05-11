@bugs
Feature: Adding Pledges using Save and New, bug 602015

  Background:
    Given I login into eTap for bugs

  Scenario: Verifying the ability to add pledges via save and new
    When I go to the journal of account 'Jose Berrios'
    And select Gift/Pledge from the Add New... drop down menu
    And I set the date to Today on the new pledge page
    And I set the Pledged Amount to '1200'
    And set the Fund to 'Unrestricted'
    And set the Campaign to 'Annual'
    And set the Approach to 'Direct Mail'
    And I click Create Pledge Schedule on the new pledge page
    And I set the Frequency to 'Monthly (12)'
    And I set the First Installment Date to Today
    And I set the Installment Amount to '$100.00'
    And I click Save And 'New'
    And I set the date to Today on the new pledge page
    And I set the Pledged Amount to '1200'
    And set the Fund to 'Unrestricted'
    And set the Campaign to 'Annual'
    And set the Approach to 'Direct Mail'
    And I click Create Pledge Schedule on the new pledge page
    And I set the Frequency to 'Monthly (12)'
    And I set the First Installment Date to Today
    And I set the Installment Amount to '$100.00'
    And I click Save And 'Edit'
    And I click Delete on the transaction page
    And I go to the journal of account 'Jose Berrios'
    And I click on the Pledge listed in the journal
    And I click Delete on the transaction page
    And I click the Filters icon
    And I click Clear button on the journal filter
    And I mark the checkbox next to Pledge on the journal page
    And I click Find on the journal page
    Then I should see the message '0 Journal Entries' on the journal page
