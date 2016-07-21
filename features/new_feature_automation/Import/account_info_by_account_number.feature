@sprint
Feature: Ability to update existing accounts using the account number as the key, without name fields

  Background: I am logged into eTapestry
    Given I login into eTap for CP1

  Scenario: Successful account number import with address information included, merging duplicates
    When I click Management on the main menu
    And I click on Import on the management menu
    And I click 'Standard eTapestry Imports' on the Imports screen
    And I click New Import on the Standard eTapestry Imports screen
    And I set the Name to 'Update Account Information by Account Number - Merge' on the Import screen
    And I choose the 'Ground Zero Account Number Export For New Import Template A' file on the Import screen
    And I set the Select the Type of Information to Import to 'Update Account Information by Account Number' on the Import screen
    And I set the Country to 'United States' on the Import screen
    And I click Next on the Import screen
    And I click Import Another eTapestry Field on the Import screen
    And I click 'Address Lines' on the Import Field pop up
    And I click 'City' on the Import Field pop up
    And I click 'State/Province' on the Import Field pop up
    And I click 'Postal Code' on the Import Field pop up
    And I click 'Voice' on the Import Field pop up
    And I click 'Mobile' on the Import Field pop up
    And I click 'Email' on the Import Field pop up
    And I click 'Company' on the Import Field pop up
    And I click 'Mailing Status' on the Import Field pop up
    And I click 'Account Type' on the Import Field pop up
    And I click 'Attributes' on the Import Field pop up
    And I click 'Close' on the Import Field pop up
    And I click on the 'Account Number' mapping icon on the Import screen
    And I click 'Account Number' from my file
    And I the X on the Import mapping pop up
    And I click on the 'Persona Type' mapping icon on the Import screen
    And I click 'Persona Type' from my file
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
    And I click on the 'Company' mapping icon on the Import screen
    And I click 'Company' from my file
    And I the X on the Import mapping pop up
    And I click on the 'Mailing Status' mapping icon on the Import screen
    And I click 'Mailing Status' from my file
    And I the X on the Import mapping pop up
    And I click on the 'Account Type' mapping icon on the Import screen
    And I click 'Account Type' from my file
    And I the X on the Import mapping pop up
    And I click on the 'Attributes' mapping icon on the Import screen
    And I click 'Attributes' from my file
    And I the X on the Import mapping pop up
    And I mark the other fields checkbox next to 'Persona Type' on the import screen
    And I click Next on the Import screen
    And I click Next on the Import screen
    And I click Next on the Import step 4
    And I should see the Import Summary page
    Then I should see 'Accounts Created 0' on the Import Summary page
    And I should see 'Accounts Modified 4' on the Import Summary page
    And I click Next on the Import screen
    And I type 'Niles Baker' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'Niles Baker' in the search results
    And I click on 'Personas' in the account header
    And the Address Lines should be set to '123 Main St'
    And the City should be set to 'Indianapolis'
    And the State should be set to 'IN'
    And the Postal Code should be set to '46225'
    And the Voice should be set to '317-555-5555'
    And the Mobile should be set to '317-555-4444'
    And the Email should be set to 'qa-1@blackbaud.com'
    And the Short Salutation should be set to 'Niles'
    And the Long Salutation should be set to 'Baker'
    And the Envelope Salutation should be set to 'Niles Baker'
    And the 'Company' should be set to 'Blackbaud'
    And I click on 'Defined Fields' in the account header
    And the 'Account Type' should be set to 'Individual'
    And the 'Attributes' should be set to 'Volunteer'
    And the 'Mailing Status' should be set to 'Do Not Solicit'
    And I click on 'Account Settings' in the account header
    And the Name Format value should be set to 'Individual'
    And the First Name should be set to 'Niles'
    And the Last Name should be set to 'Baker'
    And the Account Name should be set to 'Niles Baker'
    And the Sort Name should be set to 'Baker, Niles'
    And the Recognition Name should be set to 'Niles Baker'
    And the Recognition Type should be set to '(account name)'
    And I type 'Stephen Rickman' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'Stephen Rickman' in the search results
    And I click on 'Personas' in the account header
    And the Address Lines should be set to '3100 West Liberty Street'
    And the City should be set to 'Ann Arbor'
    And the State should be set to 'MI'
    And the Postal Code should be set to '48103'
    And the Voice should be set to '317-555-5555'
    And the Mobile should be set to '317-555-4444'
    And the Email should be set to 'qa-1@blackbaud.com'
    And the Short Salutation should be set to 'Stephen'
    And the Long Salutation should be set to 'Mr. Rickman'
    And the Envelope Salutation should be set to 'Mr. Stephen Rickman'
    And the 'Company' should be set to 'Blackbaud'
    And I click on 'Defined Fields' in the account header
    And the 'Account Type' should be set to 'Individual'
    And the 'Attributes' should be set to 'Volunteer, Former Staff'
    And the 'Gender' should be set to 'Male'
    And the 'Mailing Status' should be set to 'Do Not Mail'
    And I click on 'Account Settings' in the account header
    And the Name Format value should be set to 'Individual'
    And the Title should be set to 'Mr.'
    And the First Name should be set to 'Stephen'
    And the Last Name should be set to 'Rickman'
    And the Account Name should be set to 'Stephen Rickman'
    And the Sort Name should be set to 'Rickman, Stephen'
    And the Recognition Name should be set to 'Stephen Rickman'
    And the Recognition Type should be set to '(account name)'


  Scenario: Successful account number import with address information included, replace duplicates
    When I click Management on the main menu
    And I click on Import on the management menu
    And I click 'Standard eTapestry Imports' on the Imports screen
    And I click New Import on the Standard eTapestry Imports screen
    And I set the Name to 'Update Account Information by Account Number - Replace' on the Import screen
    And I choose the 'Ground Zero Account Number Export For New Import Template B' file on the Import screen
    And I set the Select the Type of Information to Import to 'Update Account Information by Account Number' on the Import screen
    And I set the Country to 'United States' on the Import screen
    And I click Next on the Import screen
    And I click Import Another eTapestry Field on the Import screen
    And I click 'Address Lines' on the Import Field pop up
    And I click 'City' on the Import Field pop up
    And I click 'State/Province' on the Import Field pop up
    And I click 'Postal Code' on the Import Field pop up
    And I click 'Voice' on the Import Field pop up
    And I click 'Mobile' on the Import Field pop up
    And I click 'Email' on the Import Field pop up
    And I click 'Company' on the Import Field pop up
    And I click 'Mailing Status' on the Import Field pop up
    And I click 'Account Type' on the Import Field pop up
    And I click 'Attributes' on the Import Field pop up
    And I click 'Close' on the Import Field pop up
    And I click on the 'Account Number' mapping icon on the Import screen
    And I click 'Account Number' from my file
    And I the X on the Import mapping pop up
    And I click on the 'Persona Type' mapping icon on the Import screen
    And I click 'Persona Type' from my file
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
    And I click on the 'Voice' mapping icon on the Import screen
    And I click 'Phone - Voice' from my file
    And I the X on the Import mapping pop up
    And I click on the 'Mobile' mapping icon on the Import screen
    And I click 'Phone - Mobile' from my file
    And I the X on the Import mapping pop up
    And I click on the 'Email' mapping icon on the Import screen
    And I click 'Email' from my file
    And I the X on the Import mapping pop up
    And I click on the 'Company' mapping icon on the Import screen
    And I click 'Company' from my file
    And I the X on the Import mapping pop up
    And I click on the 'Mailing Status' mapping icon on the Import screen
    And I click 'Mailing Status' from my file
    And I the X on the Import mapping pop up
    And I click on the 'Account Type' mapping icon on the Import screen
    And I click 'Account Type' from my file
    And I the X on the Import mapping pop up
    And I click on the 'Attributes' mapping icon on the Import screen
    And I click 'Attributes' from my file
    And I the X on the Import mapping pop up
    And I mark the other fields checkbox next to 'Persona Type' on the import screen
    And I click Next on the Import screen
    And I click Next on the Import screen
    And I set all of the duplicates to 'Replace eTapestry Info (Replace)' on the import screen
    And I click Next on the Import step 4
    Then I should see the Import Summary page
    Then I should see 'Accounts Created 0' on the Import Summary page
    And I should see 'Accounts Modified 4' on the Import Summary page
    And I click Next on the Import screen
    And I type 'Brandi Ramirez' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'Brandi Ramirez' in the search results
    And I click on 'Personas' in the account header
    And the Address Lines should be set to '1245 Westfall Avenue'
    And the City should be set to 'Lafayette'
    And the State should be set to 'MN'
    And the Postal Code should be set to '56054'
    And the Voice should be set to '507-228-3950'
    And the Short Salutation should be set to 'Brandi'
    And the Long Salutation should be set to 'Ms. Ramirez'
    And the Envelope Salutation should be set to 'Ms. Brandi Ramirez'
    And I set the Persona to '* Business' on the Personas page
    And the Address Lines should be set to '707 N Minnesota St'
    And the City should be set to 'New Ulm'
    And the State should be set to 'MN'
    And the Postal Code should be set to '56073'
    And the Voice should be set to '(507) 354-2421'
    And the Email should be set to 'qa-1@blackbaud.com'
    And the Short Salutation should be set to 'Brandi'
    And the Long Salutation should be set to 'Ms. Ramirez'
    And the Envelope Salutation should be set to 'Ms. Brandi Ramirez'
    And the 'Company' should be set to 'Taco Bell'
    And I click on 'Defined Fields' in the account header
    And the 'Account Type' should be set to 'Individual'
    And the 'Gender' should be set to 'Female'
    And I click on 'Account Settings' in the account header
    And the Name Format value should be set to 'Individual'
    And the Title should be set to 'Ms.'
    And the First Name should be set to 'Brandi'
    And the Last Name should be set to 'Ramirez'
    And the Account Name should be set to 'Brandi Ramirez'
    And the Sort Name should be set to 'Ramirez, Brandi'
    And the Recognition Name should be set to 'Brandi Ramirez'
    And the Recognition Type should be set to '(account name)'
    And I type 'Donna Finnie' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'Donna Finnie' in the search results
    And I click on 'Personas' in the account header
    And the Address Lines should be set to '88-C Patty Ln'
    And the City should be set to 'Greenville'
    And the State should be set to 'NJ'
    And the Postal Code should be set to '12459'
    And the Voice should be set to '732-745-8909'
    And the Mobile should be set to '732-745-1111'
    And the Short Salutation should be set to 'Donna'
    And the Long Salutation should be set to 'Ms. Finnie'
    And the Envelope Salutation should be set to 'Ms. Donna Finnie'
    And I click on 'Defined Fields' in the account header
    And the 'Account Type' should be set to 'Individual'
    And the 'Gender' should be set to 'Female'
    And the 'Attributes' should be set to 'Member, Staff'
    And I click on 'Account Settings' in the account header
    And the Name Format value should be set to 'Individual'
    And the Title should be set to 'Ms.'
    And the First Name should be set to 'Donna'
    And the Last Name should be set to 'Finnie'
    And the Account Name should be set to 'Donna Finnie'
    And the Sort Name should be set to 'Finnie, Donna'
    And the Recognition Name should be set to 'Donna Finnie'
    And the Recognition Type should be set to '(account name)'

  Scenario: Account number import - missing required fields
    When I click Management on the main menu
    And I click on Import on the management menu
    And I click 'Standard eTapestry Imports' on the Imports screen
    And I click 'Update Account Information by Account Number - Merge' on the Imports screen
    And I choose the 'Incomplete Ground Zero Account Number Export For New Import Template' file on the Import screen
    And I click Next on the Import screen
    And I click Next on the Import screen
    And I click Next on the Import screen
    And I click Next on the Import screen
    Then I receive the following import message: 'We cannot run your import because there are no accounts in your database with the account numbers specified by your import file.'


  Scenario: Account number import - no existing account
    When I click Management on the main menu
    And I click on Import on the management menu
    And I click 'Standard eTapestry Imports' on the Imports screen
    And I click 'Update Account Information by Account Number - Replace' on the Imports screen
    And I choose the 'Ground Zero Account Number Export For New Import Template No Existing Account A' file on the Import screen
    And I click Next on the Import screen
    And I click Next on the Import screen
    And I click Next on the Import screen
    And I click Next on the Import screen
    Then I receive the following import message: 'We were unable to process your import because of issues with your import file. NO DATA was added to your database including lines where there were no errors.'
    And I see the error 'There is no record in your database with account number 888' on step 5 of the import process

  Scenario: Account number import - deleting the import template
    When I click Management on the main menu
    And I click on Import on the management menu
    And I click 'Standard eTapestry Imports' on the Imports screen
    And I click Delete below the 'Update Account Information by Account Number - Merge' on the Standard eTapestry Imports screen
    And I click Yes to delete the import template
    Then I should not see the 'Update Account Information by Account Number - Merge' import template

  Scenario: Account number import - no existing account error on step 4
    When I click Management on the main menu
    And I click on Import on the management menu
    And I click 'Standard eTapestry Imports' on the Imports screen
    And I click 'Update Account Information by Account Number - Replace' on the Imports screen
    And I choose the 'Ground Zero Account Number Export For New Import Template No Existing Account B' file on the Import screen
    And I click Next on the Import screen
    And I click Next on the Import screen
    And I click Next on the Import screen
    Then I receive the following import message: 'We cannot run your import because there are no accounts in your database with the account numbers specified by your import file.'