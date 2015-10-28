Feature: Add Account in New Names database

  Scenario: Add new individual account - all fields populated
    Given I log out of eTap
    When I login into eTap with values 'Automationbot.us2', 'spicypancakes1'
    And I click Accounts
    And I click on Add Account on the find account screen
    And I set the Name Format to 'Individual' on the add account page
    And I set the Title to 'Mr.' on the add account page
    And I set the First Name to 'John' on the add account page
    And I set the Middle Name to 'I.' on the add account page
    And I set the Last Name to 'Doe' on the add account page
    And I set the Suffix to 'Jr.' on the add account page
###   Update Short Salutation Check to 'Mack' once the following two steps have been added to scenario   ###
#    And I click the edit icon next to 'Short Salutation' on the add account page
#    And I set the Short Salutation to 'Mack' on the add account page
    And I set Address Lines to '501 N Pennsylvania Parkway' on the classic add account page
    And I set City to 'Indianapolis' on the classic add account page
    And I set State to 'IN' on the classic add account page
    And I set Postal Code to '46280' on the classic add account page
    And I set County to 'Hamilton' on the classic add account page
    And I set Voice to '317-336-3827' on the classic add account page
    And I set Email to 'lance.moore@blackbaud.com' on the classic add account page
    And I set Web Page to 'www.google.com' on the classic add account page
    And I set Note to 'Do not call after 6pm' on the classic add account page
    And I set the UDF 'Company' to 'Blackbaud' on the classic add account page
    And I click Save And 'Go to Personas' on the add account page
    And the Address Lines should be set to '501 N Pennsylvania Parkway'
    And the City should be set to 'Indianapolis'
    And the State should be set to 'IN'
    And the Postal Code should be set to '46280'
    And the County should be set to 'Hamilton'
    And the Voice should be set to '(317) 336-3827'
    And the Email should be set to 'lance.moore@blackbaud.com'
    And the Web Page should be set to 'www.google.com'
    And the Note should be set to 'Do not call after 6pm'
    And the Short Salutation should be set to 'John'
    And the Long Salutation should be set to 'Mr. Doe'
    And the Envelope Salutation should be set to 'Mr. John Doe, Jr.'
    And the 'Company' should be set to 'Blackbaud'
    And I click on 'Account Settings' in the account header
###   Could only get Name Format verification to work if we check the value number: Individual=1, Family=2, Business=3  ###
    And the Name Format value should be set to '1'
    And the Title should be set to 'Mr.'
    And the First Name should be set to 'John'1
    And the Middle Name should be set to 'I.'
    And the Last Name should be set to 'Doe'
    And the Suffix should be set to 'Jr.'
    And the Account Name should be set to 'John I. Doe, Jr.'
    And the Sort Name should be set to 'Doe Jr., John I.'
    And the Recognition Name should be set to 'John I. Doe, Jr.'
    And the Recognition Type should be set to '(account name)'
    And I click Delete Role on the Account Settings page
    And I click Yes on the Account Settings page
    Then I should see the message: 'Empty Search Criteria'

  Scenario: Missing Required Fields - Individual account
    Given I log out of eTap
    When I login into eTap with values 'Automationbot.us2', 'spicypancakes1'
    And I click Accounts
    And I click on Add Account on the find account screen
    And I set the Name Format to 'Individual' on the add account page
    And I set the Title to 'Mr.' on the add account page
    And I set the First Name to 'Josh' on the add account page
    And I set the Middle Name to 'E.' on the add account page
    And I set the Suffix to 'Jr.' on the add account page
    And I set Address Lines to '7787 West Pine Ave' on the classic add account page
    And I set City to 'Indianapolis' on the classic add account page
    And I set State to 'IN' on the classic add account page
    And I set Postal Code to '46220' on the classic add account page
    And I set Voice to '318-219-4444' on the classic add account page
    And I set Email to 'lance.moore@blackbaud.com' on the classic add account page
    And I click Save And 'Go to Personas'
    And I click Accounts
    And I click Advanced Find
    And I set Phone to '318-219-4444' on the Advanced Find screen
    And I click Find
    Then I should see the message: 'No Results Found'


  Scenario: Missing Required Fields - Family account
    Given I log out of eTap
    When I login into eTap with values 'Automationbot.us2', 'spicypancakes1'
    And I click Accounts
    And I click on Add Account on the find account screen
    And I set the Name Format to 'Family' on the add account page
    And I set the Sort Name to 'The Rusche Family' on the add account page
    And I set Address Lines to '7787 West Pine Ave' on the classic add account page
    And I set City to 'Indianapolis' on the classic add account page
    And I set State to 'IN' on the classic add account page
    And I set Postal Code to '46220' on the classic add account page
    And I set Voice to '318-219-4444' on the classic add account page
    And I set Email to 'lance.moore@blackbaud.com' on the classic add account page
    And I click Save And 'Go to Personas'
    And I click Accounts
    And I click Advanced Find
    And I set Phone to '318-219-4444' on the Advanced Find screen
    And I click Find
    Then I should see the message: 'No Results Found'


  Scenario: Missing Required Fields - Business account
    Given I log out of eTap
    When I login into eTap with values 'Automationbot.us2', 'spicypancakes1'
    And I click Accounts
    And I click on Add Account on the find account screen
    And I set the Name Format to 'Business' on the add account page
    And I set the Account Name to 'The Rusche Family' on the add account page
    And I set the Sort Name to ' ' on the add account page
    And I set Address Lines to '7787 West Pine Ave' on the classic add account page
    And I set City to 'Indianapolis' on the classic add account page
    And I set State to 'IN' on the classic add account page
    And I set Postal Code to '46220' on the classic add account page
    And I set Voice to '318-219-4444' on the classic add account page
    And I set Email to 'lance.moore@blackbaud.com' on the classic add account page
    And I click Save And 'Go to Personas'
    And I click Accounts
    And I click Advanced Find
    And I set Phone to '318-219-4444' on the Advanced Find screen
    And I click Find
    Then I should see the message: 'No Results Found'