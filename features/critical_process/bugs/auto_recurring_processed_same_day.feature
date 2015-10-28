Feature: Setting up auto processing Recurring Gift Schedules

  Scenario: Setting up an auto processing CC Recurring Gift Schedule and processing the first payment today
    Given I am logged into eTap
    When I type 'Niles' into the dynamic search field
    And I press Enter on the keyboard
    And I click on the 'Niles Baker' account
    And I click on 'Journal' in the account header
    And I should see the message 'No Journal Entries Found' on the journal page
    And I select 'Recurring Gift Schedule' from the Add New... drop down menu
    And I set the date to Today on the new pledge page
    And set the Installment Amount to '7.00' on the Recurring Gift Schedule
    And set the Fund to 'General'
    And set the Campaign to 'Capital'
    And set the Approach to 'Direct Mail'
    And I set the First Installment Date to Today
    And I set the Recurring Gift Schedule Frequency to 'Weekly (52)'
    And I change the process type to Auto
    And I click Gift Types
    And I set the Gift Type to 'Credit/Debit Card'
    And set the Credit/Debit Card Number to '4111111111111111'
    And set the Expiration Month to '12'
    And set the Expiration Year to '2034'
    And I click Save And 'Go to Journal'
    And I click on the 'Recurring Gift' in the journal
    And the date field on the transaction screen should be populated with Today
    And the Received Amount should be set to '$7.00'
    And I should see the message 'Credit/Debit Card has been processed via' on the recurring gift screen
    And I should see the message 'eTapestry Virtual Terminal' on the recurring gift screen
    And I click Delete on the transaction page
    And I click on the 'Recurring Gift Schedule' in the journal
    And I click Delete on the transaction page
    Then I should see the message 'No Journal Entries Found' on the journal page


  Scenario: Setting up an auto processing EFT Recurring Gift Schedule and processing the first payment today
    Given I am logged into eTap
    When I click Management on the main menu
    And I click My Organization
    And I click on 'eCommerce' in the account header
    And I click on the 'BBMS' processor
    And I verify that the Supports EFT checkbox is marked
    And I type 'Niles' into the dynamic search field
    And I press Enter on the keyboard
    And I click on the 'Niles Baker' account
    And I click on 'Journal' in the account header
    And I should see the message 'No Journal Entries Found' on the journal page
    And I select 'Recurring Gift Schedule' from the Add New... drop down menu
    And I set the date to Today on the new pledge page
    And set the Installment Amount to '10.00' on the Recurring Gift Schedule
    And set the Fund to 'Unrestricted'
    And set the Campaign to 'Capital'
    And set the Approach to 'Direct Mail'
    And I set the First Installment Date to Today
    And I set the Recurring Gift Schedule Frequency to 'Monthly (12)'
    And I change the process type to Auto
    And I click Gift Types
    And I set the Gift Type to 'Electronic Funds Transfer (EFT)'
    And I set the Routing Number to '053904483'
    And I set the Account Number to '123456'
    And I click Save And 'Go to Journal'
    And I click on the 'Recurring Gift' in the journal
    And the date field on the transaction screen should be populated with Today
    And the Received Amount should be set to '$10.00'
    And I should see the message 'EFT has been processed via' on the recurring gift screen
    And I should see the message 'eTapestry Virtual Terminal' on the recurring gift screen
    And I click Delete on the transaction page
    And I click on the 'Recurring Gift Schedule' in the journal
    And I click Delete on the transaction page
    Then I should see the message 'No Journal Entries Found' on the journal page

