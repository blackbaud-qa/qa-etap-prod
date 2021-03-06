#@crit_proc11
  @crit_proc10
Feature: Importing Constituent and Gift Information

  Background:
  Given I login into eTap for CP10

  Scenario: running a successful gift import with address information included
    Given I clear the old import data
    When I click Management on the main menu
    And I click on Import on the management menu
    And I click 'Standard eTapestry Imports' on the Imports screen
    And I click New Import on the Standard eTapestry Imports screen
    And I set the Name to 'Constituent and Gift Import' on the Import screen
    And I choose the working import file for names on the Import screen
    And I set the Select the Type of Information to Import to 'Account Information with Single Gift' on the Import screen
    And I set the Country to 'United States' on the Import screen
    And I set the name format to 'Assign Individual to all accounts' on the Import screen
    And I click Next on the Import screen
    And I click Import Another eTapestry Field on the Import screen
    And I click 'Address Lines' on the Import Field pop up
    And I click 'City' on the Import Field pop up
    And I click 'State/Province' on the Import Field pop up
    And I click 'Postal Code' on the Import Field pop up
    And I click 'Voice' on the Import Field pop up
    And I click 'Mobile' on the Import Field pop up
    And I click 'Email' on the Import Field pop up
    And I click 'Check Date' on the Import Field pop up
    And I click 'Check Number' on the Import Field pop up
    And I click 'Credit/Debit Card Expiration Date' on the Import Field pop up
    And I click 'Credit/Debit Card Number' on the Import Field pop up
    And I click 'Close' on the Import Field pop up
    And I click on the 'Persona Type' mapping icon on the Import screen
    And I click 'Persona Type' from my file
    And I the X on the Import mapping pop up
    And I set the 'Account Name' dropdown to 'Map from your file or use custom text' on the Import Screen
    And I click on the 'Account Name' mapping icon for names on the Import screen
    And I click 'First Name' and 'Last Name' from my file
    And I the X on the Import mapping pop up
    And I click on the 'First Name' mapping icon for names on the Import screen
    And I click 'First Name' from my file
    And I the X on the Import mapping pop up
    And I click on the 'Last Name' mapping icon for names on the Import screen
    And I click 'Last Name' from my file
    And I the X on the Import mapping pop up
    And I set the 'Sort Name' dropdown to 'Map from your file or use custom text' on the Import Screen
    And I click on the 'Sort Name' mapping icon for names on the Import screen
    And I click 'Sort Name' from my file
    And I the X on the Import mapping pop up
    And I click on the 'Date' mapping icon on the Import screen
    And I click 'Date' from my file
    And I the X on the Import mapping pop up
    And I click on the 'Received' mapping icon on the Import screen
    And I click 'Received' from my file
    And I the X on the Import mapping pop up
    And I click on the 'Fund' mapping icon on the Import screen
    And I click 'Fund' from my file
    And I the X on the Import mapping pop up
    And I click on the 'Gift Type' mapping icon on the Import screen
    And I click 'Gift Type' from my file
    And I the X on the Import mapping pop up
    And I click on the 'Address Lines' mapping icon on the Import screen
    And I click 'Address Lines' from my file
    And I the X on the Import mapping pop up
    And I click on the 'City' mapping icon on the Import screen
    And I click 'City' from my file
    And I the X on the Import mapping pop up
    And I click on the 'State/Province' mapping icon on the Import screen
    And I click 'State/Province' from my file
    And I the X on the Import mapping pop up
    And I click on the 'Postal Code' mapping icon on the Import screen
    And I click 'Postal Code' from my file
    And I the X on the Import mapping pop up
    And I click on the 'Mobile' mapping icon on the Import screen
    And I click 'Phone - Mobile' from my file
    And I the X on the Import mapping pop up
    And I click on the 'Voice' mapping icon on the Import screen
    And I click 'Phone - Voice' from my file
    And I the X on the Import mapping pop up
    And I click on the 'Email' mapping icon on the Import screen
    And I click 'Email' from my file
    And I the X on the Import mapping pop up
    And I click on the 'Check Date' mapping icon on the Import screen
    And I click 'Check Date' from my file
    And I the X on the Import mapping pop up
    And I click on the 'Check Number' mapping icon on the Import screen
    And I click 'Check Number' from my file
    And I the X on the Import mapping pop up
    And I click on the 'Credit/Debit Card Number' mapping icon on the Import screen
    And I click 'Credit/Debit Card Number' from my file
    And I the X on the Import mapping pop up
    And I click on the 'Credit/Debit Card Expiration Date' mapping icon on the Import screen
    And I click 'Credit/Debit Card Expiration Date' from my file
    And I the X on the Import mapping pop up
    And I mark the Individual fields checkbox next to 'Account Name' on the import screen
    And I mark the other fields checkbox next to 'Persona Type' on the import screen
    And I click Next on the Import screen
    And I click Next on the Import screen
    And I click Next on the Import step 4
    Then I should see the Import Summary page
    And I should see 'Accounts Created 1' on the Import Summary page
    And I should see 'Accounts Modified 1' on the Import Summary page
    And I should see 'Journal Entries Created 2' on the Import Summary page
    And I click Next on the Import screen

  Scenario: missing required fields
    When I click Management on the main menu
    And I click on Import on the management menu
    And I click 'Standard eTapestry Imports' on the Imports screen
    And I click 'Constituent and Gift Import' on the Imports screen
    And I choose the incomplete import file for names on the Import screen
    And I set the name format to 'Assign Individual to all accounts' on the Import screen
    And I click Next on the Import screen
    And I click Next on the Import screen
    And I click Next on the Import screen
    And I click Next on the Import screen
    Then I receive the following import message: 'We were unable to process your import because of issues with your import file. NO DATA was added to your database including lines where there were no errors.'

  Scenario: deleting imported information and the import template
    Given I clear the old import data
    When I click Management on the main menu
    And I click on Import on the management menu
    And I click 'Standard eTapestry Imports' on the Imports screen
    And I click Delete below the 'Constituent and Gift Import' on the Standard eTapestry Imports screen
    And I click Yes to delete the import template
    Then I should not see the 'Constituent and Gift Import' import template