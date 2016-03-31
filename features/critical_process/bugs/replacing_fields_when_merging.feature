@bugs
Feature: Certain fields was not being replaced when merging (Bug 536046)

  Background:
    Given I login into eTap for bugs

  Scenario: Suburb not being replaced when merging AU accounts
    When I click Accounts
    And I click on Add Account on the find account screen
    And I set the Name Format to 'Individual' on the add account page
    And I set the Title to 'Mrs.' on the add account page
    And I set the First Name to 'Ashley' on the add account page
    And I set the Middle Name to 'A.' on the add account page
    And I set the Last Name to 'Smith' on the add account page
    And I click Change Country on the Personas page
    And I set the country to 'Australia' in the Change Country modal on the Personas page
    And I click Continue in the Change Country modal on the Personas page
    And I set Address Lines to '200 Broadway Ave' on the classic add account page
    And I set Suburb to 'West Beach' on the add account page
    And I set State to 'SA' on the classic add account page
    And I set Postal Code to '5024' on the classic add account page
    And I set Voice to '308 8088 3332' on the classic add account page
    And I set Email to 'ashley.jones@test.com' on the classic add account page
    And I set the UDF 'Account Type' dropdown to 'Individual' in the UDF section on the classic add account page
    And I click Save And 'Go to Personas'
    And I click Accounts
    And I click on Add Account on the find account screen
    And I set the Name Format to 'Individual' on the add account page
    And I set the Title to 'Mrs.' on the add account page
    And I set the First Name to 'Ashley' on the add account page
    And I set the Middle Name to 'A.' on the add account page
    And I set the Last Name to 'Smith-Jones' on the add account page
    And I click Change Country on the Personas page
    And I set the country to 'Australia' in the Change Country modal on the Personas page
    And I click Continue in the Change Country modal on the Personas page
    And I set Address Lines to '5150 Thompson Ave' on the classic add account page
    And I set Suburb to 'Broadbeach' on the add account page
    And I set State to 'SA' on the classic add account page
    And I set Postal Code to '4218' on the classic add account page
    And I set Voice to '308 8088 3332' on the classic add account page
    And I set Email to 'ashley.smith-jones@test.com' on the classic add account page
    And I set the UDF 'Account Type' dropdown to 'Individual' in the UDF section on the classic add account page
    And I click Save And 'Go to Personas'
    And I handle the duplicate report if necessary
    When I click on the account settings page on the accounts page
    And I click Merge Role on the account settings page
    And I type 'Ashley A. Smith' into the search field in the Find Account popup window
    And I click Find in the Find Account popup window
    And I click on 'Ashley A. Smith' in the Find Account popup window
    And I click Change All to Replace on the Merge Role page
    And I click Save
    And I click Yes on the Account Settings page
    And I click Personas
    And the Suburb should be set to 'Broadbeach'
    And I click on the account settings page on the accounts page
    And I click Delete Role on the Account Settings page
    And I click Yes to permanently delete the item
#    Then I should be taken to the Find Account page

  Scenario: Street Name, Building Number, Apt Number not being replaced when merging NL accounts
    When I click Accounts
    And I click on Add Account on the find account screen
    And I set the Name Format to 'Individual' on the add account page
    And I set the Title to 'Mr.' on the add account page
    And I set the First Name to 'Nick' on the add account page
    And I set the Middle Name to 'A.' on the add account page
    And I set the Last Name to 'Newport' on the add account page
    And I click Change Country on the Personas page
    And I set the country to 'Netherlands' in the Change Country modal on the Personas page
#    And I select 'Netherlands' in the Select a country to enable drop down
    And I click Continue in the Change Country modal on the Personas page
    And I set Street Name to 'Hettenheuvelweg' on the add account page
    And I set Building Number to '4' on the add account page
    And I set Apt Number to '123' on the add account page
    And I set Postal Code to '1101 BN' on the classic add account page
    And I set City to 'Amsterdam' on the classic add account page
    And I set Voice to '31-20-564-2796' on the classic add account page
    And I set Email to 'nick.newport@test.com' on the classic add account page
    And I set the UDF 'Account Type' dropdown to 'Individual' in the UDF section on the classic add account page
    And I click Save And 'Go to Personas'
    And I click Accounts
    And I click on Add Account on the find account screen
    And I set the Name Format to 'Individual' on the add account page
    And I set the Title to 'Mr.' on the add account page
    And I set the First Name to 'Nicholas' on the add account page
    And I set the Middle Name to 'A.' on the add account page
    And I set the Last Name to 'Newport' on the add account page
    And I click Change Country on the Personas page
    And I set the country to 'Netherlands' in the Change Country modal on the Personas page
    And I click Continue in the Change Country modal on the Personas page
    And I set Street Name to 'Kalverstraat' on the add account page
    And I set Building Number to '45' on the add account page
    And I set Apt Number to '47' on the add account page
    And I set Postal Code to '3511 AX' on the classic add account page
    And I set City to 'Amsterdam' on the classic add account page
    And I set Voice to '31-20-564-2796' on the classic add account page
    And I set Email to 'nick.newport@test.com' on the classic add account page
    And I set the UDF 'Account Type' dropdown to 'Individual' in the UDF section on the classic add account page
    And I click Save And 'Go to Personas'
    And I handle the duplicate report if necessary
    When I click on the account settings page on the accounts page
    And I click Merge Role on the account settings page
    And I type 'Nick A. Newport' into the search field in the Find Account popup window
    And I click Find in the Find Account popup window
    And I click on 'Nick A. Newport' in the Find Account popup window
    And I click Change All to Replace on the Merge Role page
    And I click Save
    And I click Yes on the Account Settings page
    And I click Personas
    And the Street Name should be set to 'Kalverstraat'
    And the Building Number should be set to '45'
    And the Apt Number should be set to '47'
    And I click on the account settings page on the accounts page
    And I click Delete Role on the Account Settings page
    And I click Yes to permanently delete the item
#    Then I should be taken to the Find Account page
    And I click Management on the main menu
    And I click System Defined Fields on the management menu
    And I click Country Codes on the system defined fields page
    And I click Enabled under the country code 'NL' to disable the value
    And I click Save and Finish on the Country Codes page
    And I should be taken to the System Defined Fields page
