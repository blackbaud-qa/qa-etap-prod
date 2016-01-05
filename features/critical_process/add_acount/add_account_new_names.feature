@crit_proc
Feature: Add Account in New Names database

  Scenario: Add new individual account - all fields populated
    Given I am logged into eTap
    When I click Accounts
    And I click on Add Account on the find account screen
    And I set the Name Format to 'Individual' on the add account page
    And I set the Title to 'Mr.' on the add account page
    And I set the First Name to 'John' on the add account page
    And I set the Middle Name to 'I.' on the add account page
    And I set the Last Name to 'Doe' on the add account page
    And I set the Suffix to 'Jr.' on the add account page
    And I click the edit icon next to 'Short Salutation' on the add account page
    And I set the Short Salutation to 'Mack' on the add account page
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
    And I set the UDF 'Account Type' dropdown to 'Individual' in the UDF section on the classic add account page
    And I click Save And 'Go to Personas' on the add account page
    And I handle the duplicate report if necessary
    And the Address Lines should be set to '501 N Pennsylvania Parkway'
    And the City should be set to 'Indianapolis'
    And the State should be set to 'IN'
    And the Postal Code should be set to '46280'
    And the County should be set to 'Hamilton'
    And the Voice should be set to '(317) 336-3827'
    And the Email should be set to 'lance.moore@blackbaud.com'
    And the Web Page should be set to 'www.google.com'
    And the Note should be set to 'Do not call after 6pm'
    And the Short Salutation should be set to 'Mack'
    And the Long Salutation should be set to 'Mr. Doe'
    And the Envelope Salutation should be set to 'Mr. John Doe, Jr.'
    And the 'Company' should be set to 'Blackbaud'
    And I click on 'Defined Fields' in the account header
    And the 'Account Type' should be set to 'Individual'
    And I click on 'Account Settings' in the account header
    And the Name Format value should be set to 'Individual'
    And the Title should be set to 'Mr.'
    And the First Name should be set to 'John'
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
    Given I am logged into eTap
    When I click Accounts
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
    Given I am logged into eTap
    When I click Accounts
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
    Given I am logged into eTap
    When I click Accounts
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

  Scenario: Add new family account - all fields populated
    Given I am logged into eTap
    When I click Accounts
    And I click on Add Account on the find account screen
    And I set the Name Format to 'Family' on the add account page
    And I set the Account Name to 'The Anderson Family' on the add account page
    And I set the Short Salutation to 'Tom and Heather' on the add account page
    And I set Address Lines to '2115 Fern Gully Lane' on the classic add account page
    And I set City to 'Indianapolis' on the classic add account page
    And I set State to 'IN' on the classic add account page
    And I set Postal Code to '46253' on the classic add account page
    And I set County to 'Marion' on the classic add account page
    And I set Voice to '317-259-1411' on the classic add account page
    And I set Email to 'lance.moore@blackbaud.com' on the classic add account page
    And I set Web Page to 'www.google.com' on the classic add account page
    And I set Note to 'Do not call after 6pm' on the classic add account page
    And I set the UDF 'Account Type' dropdown to 'Individual' in the UDF section on the classic add account page
    And I click Save And 'Go to Personas' on the add account page
    And I handle the duplicate report if necessary
    And the Address Lines should be set to '2115 Fern Gully Lane'
    And the City should be set to 'Indianapolis'
    And the State should be set to 'IN'
    And the Postal Code should be set to '46253'
    And the County should be set to 'Marion'
    And the Voice should be set to '(317) 259-1411'
    And the Email should be set to 'lance.moore@blackbaud.com'
    And the Web Page should be set to 'www.google.com'
    And the Note should be set to 'Do not call after 6pm'
    And the Short Salutation should be set to 'Tom and Heather'
    And the Long Salutation should be set to 'The Anderson Family'
    And the Envelope Salutation should be set to 'The Anderson Family'
    And I click on 'Defined Fields' in the account header
    And the 'Account Type' should be set to 'Individual'
    And I click on 'Account Settings' in the account header
    And the Name Format value should be set to 'Family'
    And the Account Name should be set to 'The Anderson Family'
    And the Sort Name should be set to 'Anderson Family, The'
    And the Recognition Name should be set to 'The Anderson Family'
    And the Recognition Type should be set to '(account name)'
    And I click Delete Role on the Account Settings page
    And I click Yes on the Account Settings page
    Then I should see the message: 'Empty Search Criteria'


  Scenario: Add new business account - all fields populated
    Given I am logged into eTap
    When I click Accounts
    And I click on Add Account on the find account screen
    And I set the Name Format to 'Business' on the add account page
    And I set the Account Name to 'Delivra' on the add account page
    And I set the Short Salutation to 'Neil' on the add account page
    And I set the Long Salutation to 'Mr. Berman' on the add account page
    And I set the Envelope Salutation to 'Mr. Neil Berman' on the add account page
    And I set Address Lines to '8415 Allison Pointe Blvd #100' on the classic add account page
    And I set City to 'Indianapolis' on the classic add account page
    And I set State to 'IN' on the classic add account page
    And I set Postal Code to '46250' on the classic add account page
    And I set County to 'Marion' on the classic add account page
    And I set Voice to '866-915-9465' on the classic add account page
    And I set Email to 'lance.moore@blackbaud.com' on the classic add account page
    And I set the UDF 'Account Type' dropdown to 'Business' in the UDF section on the classic add account page
    And I click Save And 'Go to Personas' on the add account page
    And I handle the duplicate report if necessary
    And the Address Lines should be set to '8415 Allison Pointe Blvd #100'
    And the City should be set to 'Indianapolis'
    And the State should be set to 'IN'
    And the Postal Code should be set to '46250'
    And the County should be set to 'Marion'
    And the Voice should be set to '(866) 915-9465'
    And the Email should be set to 'lance.moore@blackbaud.com'
    And the Short Salutation should be set to 'Neil'
    And the Long Salutation should be set to 'Mr. Berman'
    And the Envelope Salutation should be set to 'Mr. Neil Berman'
    And I click on 'Defined Fields' in the account header
    And the 'Account Type' should be set to 'Business'
    And I click on 'Account Settings' in the account header
    And the Name Format value should be set to 'Business'
    And the Account Name should be set to 'Delivra'
    And the Sort Name should be set to 'Delivra'
    And the Recognition Name should be set to 'Delivra'
    And the Recognition Type should be set to '(account name)'
    And I click Delete Role on the Account Settings page
    And I click Yes on the Account Settings page
    Then I should see the message: 'Empty Search Criteria'