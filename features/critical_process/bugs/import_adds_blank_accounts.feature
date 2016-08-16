@bugs
Feature: verify that importing does not add blank accounts
  Provides overage for TFS bug 649410.

  Background:
    Given I login into eTap for bugs

   Scenario: Successful Import Does Not Create Blank Accounts
     When I click Management on the main menu
     And I click on Import on the management menu
     And I click 'Standard eTapestry Imports' on the Imports screen
     And I click New Import on the Standard eTapestry Imports screen
     And I set the Name to 'Importing does not add blank accounts' on the Import screen
     And I choose the 'Importing does not add blank accounts template A' file on the Import screen
     And I set the Select the Type of Information to Import to 'Account Information' on the Import screen
     And I set the name format to 'Assign Individual to all accounts' on the Import screen
     And I set the Country to 'United States' on the Import screen
     And I click Next on the Import screen
     And I click Import Another eTapestry Field on the Import screen
     And I click 'Address Lines' on the Import Field pop up
     And I click 'City' on the Import Field pop up
     And I click 'State/Province' on the Import Field pop up
     And I click 'Postal Code' on the Import Field pop up
     And I click 'Voice' on the Import Field pop up
     And I click 'Company' on the Import Field pop up
     And I click 'Gender' on the Import Field pop up
     And I click 'Close' on the Import Field pop up
     And I click on the 'Title' mapping icon for names on the Import screen
     And I click 'Title' from my file
     And I the X on the Import mapping pop up
     And I click on the 'First Name' mapping icon for names on the Import screen
     And I click 'GivenName' from my file
     And I the X on the Import mapping pop up
     And I click on the 'Middle Name' mapping icon for names on the Import screen
     And I click 'MiddleInitial' from my file
     And I the X on the Import mapping pop up
     And I click on the 'Last Name' mapping icon for names on the Import screen
     And I click 'Surname' from my file
     And I the X on the Import mapping pop up
     And I set the 'Account Name' dropdown to 'Use auto-generated Data Entry Rules' on the Import Screen
     And I set the 'Sort Name' dropdown to 'Use auto-generated Data Entry Rules' on the Import Screen
     And I set the 'Short Salutation' dropdown to 'Use auto-generated Data Entry Rules' on the Import Screen
     And I set the 'Long Salutation' dropdown to 'Use auto-generated Data Entry Rules' on the Import Screen
     And I set the 'Envelope Salutation' dropdown to 'Use auto-generated Data Entry Rules' on the Import Screen
     And I mark the Key checkbox in the Individual Name Format section next to Account Name on the import screen
     And I click on the 'Address Lines' mapping icon on the Import screen
     And I click 'StreetAddress' from my file
     And I the X on the Import mapping pop up
     And I click on the 'City' mapping icon on the Import screen
     And I click 'City' from my file
     And I the X on the Import mapping pop up
     And I click on the 'State/Province' mapping icon on the Import screen
     And I click 'State' from my file
     And I the X on the Import mapping pop up
     And I click on the 'Postal Code' mapping icon on the Import screen
     And I click 'ZipCode' from my file
     And I the X on the Import mapping pop up
     And I click on the 'Voice' mapping icon on the Import screen
     And I click 'TelephoneNumber' from my file
     And I the X on the Import mapping pop up
     And I click on the 'Company' mapping icon on the Import screen
     And I click 'Company' from my file
     And I the X on the Import mapping pop up
     And I click on the 'Gender' mapping icon on the Import screen
     And I click 'Gender' from my file
     And I the X on the Import mapping pop up
     And I click Next on the Import screen
     And I click Next on the Import screen
     And I click Next on the Import step 4
     Then I should see the Import Summary page
     And I should see 'Accounts Created 5' on the Import Summary page
     And I should see 'Accounts Modified 0' on the Import Summary page
     And I should see 'Journal Entries Created 0' on the Import Summary page
     And I click Next on the Import screen
     And I create a query for accounts created today to verify that none of them were created with blank names


  Scenario: Failed Import Does Not Create Blank Accounts
    When I click Management on the main menu
    And I click on Import on the management menu
    And I click 'Standard eTapestry Imports' on the Imports screen
    And I click New Import on the Standard eTapestry Imports screen
    And I set the Name to 'Failed import does not add blank accounts' on the Import screen
    And I choose the 'Importing does not add blank accounts template B' file on the Import screen
    And I set the Select the Type of Information to Import to 'Account Information' on the Import screen
    And I set the name format to 'Assign Individual to all accounts' on the Import screen
    And I set the Country to 'United States' on the Import screen
    And I click Next on the Import screen
    And I click Import Another eTapestry Field on the Import screen
    And I click 'Address Lines' on the Import Field pop up
    And I click 'City' on the Import Field pop up
    And I click 'State/Province' on the Import Field pop up
    And I click 'Postal Code' on the Import Field pop up
    And I click 'Voice' on the Import Field pop up
    And I click 'Company' on the Import Field pop up
    And I click 'Gender' on the Import Field pop up
    And I click 'Close' on the Import Field pop up
    And I click on the 'Title' mapping icon for names on the Import screen
    And I click 'Title' from my file
    And I the X on the Import mapping pop up
    And I click on the 'First Name' mapping icon for names on the Import screen
    And I click 'GivenName' from my file
    And I the X on the Import mapping pop up
    And I click on the 'Middle Name' mapping icon for names on the Import screen
    And I click 'MiddleInitial' from my file
    And I the X on the Import mapping pop up
    And I click on the 'Last Name' mapping icon for names on the Import screen
    And I click 'Surname' from my file
    And I the X on the Import mapping pop up
    And I set the 'Account Name' dropdown to 'Use auto-generated Data Entry Rules' on the Import Screen
    And I set the 'Sort Name' dropdown to 'Use auto-generated Data Entry Rules' on the Import Screen
    And I set the 'Short Salutation' dropdown to 'Use auto-generated Data Entry Rules' on the Import Screen
    And I set the 'Long Salutation' dropdown to 'Use auto-generated Data Entry Rules' on the Import Screen
    And I set the 'Envelope Salutation' dropdown to 'Use auto-generated Data Entry Rules' on the Import Screen
    And I mark the Key checkbox in the Individual Name Format section next to Account Name on the import screen
    And I click on the 'Address Lines' mapping icon on the Import screen
    And I click 'StreetAddress' from my file
    And I the X on the Import mapping pop up
    And I click on the 'City' mapping icon on the Import screen
    And I click 'City' from my file
    And I the X on the Import mapping pop up
    And I click on the 'State/Province' mapping icon on the Import screen
    And I click 'State' from my file
    And I the X on the Import mapping pop up
    And I click on the 'Postal Code' mapping icon on the Import screen
    And I click 'ZipCode' from my file
    And I the X on the Import mapping pop up
    And I click on the 'Voice' mapping icon on the Import screen
    And I click 'TelephoneNumber' from my file
    And I the X on the Import mapping pop up
    And I click on the 'Company' mapping icon on the Import screen
    And I click 'Company' from my file
    And I the X on the Import mapping pop up
    And I click on the 'Gender' mapping icon on the Import screen
    And I click 'Gender' from my file
    And I the X on the Import mapping pop up
    And I click Next on the Import screen
    And I click Next on the Import screen
    And I click Next on the Import step 4
    Then I receive the following import message: 'We were unable to process your import because of issues with your import file. NO DATA was added to your database including lines where there were no errors.'
    And I create a query for accounts created today to verify that none of them were created with blank names