@deep_reg
Feature: eReceipting Basics

  Background:
    Given I login into eTap for deeper regression

  Scenario: Generate eReceipt
    Given I type 'Talisha Almond' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'Talisha Almond' in the search results
    And I go to the journal of account 'Talisha Almond'
    And select Gift/Pledge from the Add New... drop down menu
    And set the Received Amount to '10.00'
    And set the Fund to 'Unrestricted'
    And set the Gift Type to Check
    And set the Check Date to '11/30/2090'
    And set the Check Number to '2598'
    And I click Save And 'Create Document'
    When I select 'Thank You Letters - eReceipt' from the one off select template drop down
    And I click Next
    And I select Generate on the Receipting step of the wizard
    And I click Next
    And I click the Run button to generate the one off
    When I go to the journal of account 'Talisha Almond'
    And I click on the Gift listed in the journal
    Then I should see a generated receipt number on the transaction

  Scenario: Void eReceipt
    Given I type 'Talisha Almond' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'Talisha Almond' in the search results
    And I go to the journal of account 'Talisha Almond'
    And I click on the Gift listed in the journal
    And I click Save And 'Create Document'
    When I select 'Thank You Letters - eReceipt' from the one off select template drop down
    And I click Next
    And I select Void on the Receipting step of the wizard
    And I click Next
    And I click the Run button to generate the one off
    When I click Queries on the main menu
    And I click on Manage Queries on the queries menu
    And I click on the 'Base' category
    And I click 'New Query' on the Edit Query Category page
    And I set the Name to 'Voided eReceipts' on the Create a New Query page
    And I set the data return type to 'Journal Entries' on the Create a New Query page
    And I set the Available Fields category to 'Journal' on the Create a New Query page
    And I click on 'Transaction Generated Receipt Status' under Available Fields on the Create a New Query page
    And I click voided for the Transaction Generated Receipt Status field on the New Query page
    And I click Save And 'Preview'
    And I should see 'Talisha Almond' in the query results
    And I should see '1 Journal Entry' results on the query preview page
    And I click Queries on the main menu
    And I click on Manage Queries on the queries menu
    And I click on the 'Base' category
    And I click delete below the 'Voided eReceipts' query on the Create a New Query page
    And I click Yes to permanently delete the item
    And I type 'Talisha Almond' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'Talisha Almond' in the search results
    And I go to the journal of account 'Talisha Almond'
    And I click on the Gift listed in the journal
    And I click Delete on the transaction page
    And I should be taken to 'Talisha Almond' Journal page


  Scenario: eReceipt with DIY
    When I click Management on the main menu
    And I click on DIY Forms on the management menu
    And I click Edit for the form titled 'Existing Donation Page'
    And I click Settings on the DIY editor page
    And I check the box to send the donor a confirmation email on the DIY settings page
    And I set the From what address? to 'kristin.lawrence@blackbaud.com' on the DIY settings page
    And I set the From Subject to 'Thank you for your donation!' on the DIY settings page
    And I enable eReceipts on the DIY settings page
    And I click Update on the DIY settings page
    And I click Save on the DIY editor page
    And I confirm saving my changes
    And I click Go Live on the DIY editor page
    And I click Yes, Go Live! on the DIY editor page
    And I click Replace on the DIY editor page
    And I click on the link for the form titled Existing Donation Page
    And I switch to the new tab in my browser
    And I enter '7' in the donation amount field on the DIY Donation Page
    And I set the Donation Frequency to 'One Time' on the DIY Donation Page
    And I set the Title to 'Mrs.' on the DIY Donation Page
    And I set First Name to 'Kristin' on the DIY Donation Page
    And I set Last Name to 'Jones' on the DIY Donation Page
    And I set Country to 'United States' on the DIY Donation Page
    And I set Address Lines to '2233 Fourth Street' on the DIY Donation Page
    And I set City to 'Indianapolis' on the DIY Donation Page
    And I set State to 'Indiana' on the DIY Donation Page
    And I set Postal Code to '12345' on the DIY Donation Page
    And I set Email to 'kristin.lawrence@blackbaud.com' on the DIY Donation Page
    And I set Confirm Email to 'kristin.lawrence@blackbaud.com' on the DIY Donation Page
    And I set Phone to '2225554796' on the DIY Donation Page
    And I set the Card Type to 'Visa' on the DIY Donation Page
    And I set Name on Card to 'Kristin Jones' on the DIY Donation Page
    And I set Card Number to '4111111111111111' on the DIY Donation Page
    And I set CVV2 to '123' on the DIY Donation Page
    And I set Expiration Month to '02' on the DIY Donation Page
    And I set Expiration Year to '2034' on the DIY Donation Page
    And I click Submit on the DIY Donation Page
    And the transaction will process successfully
    And I close the current tab
    And I type 'Kristin Jones' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'Kristin Jones' in the search results
    And I go to the journal of account 'Kristin Jones'
    And I click on the Gift listed in the journal
    And I should see a generated receipt number on the transaction
    And I click Delete on the transaction page
    And I click on 'Account Settings' in the account header
    And I click Delete Role on the Account Settings page
    And I click Yes on the Account Settings page
    When I click Management on the main menu
    And I click on DIY Forms on the management menu
    And I click Edit for the form titled 'Existing Donation Page'
    And I click Settings on the DIY editor page
    And I disable eReceipts on the DIY settings page
    And I disable the send the donor a confirmation email box on the DIY settings page
    And I click Update on the DIY settings page
    And I click Save on the DIY editor page
    And I confirm saving my changes
    And I click Go Live on the DIY editor page
    And I click Yes, Go Live! on the DIY editor page
    And I click Replace on the DIY editor page
    And I click Management on the main menu
    And I click on DIY Forms on the management menu
    Then I should be taken to the DIY landing page






