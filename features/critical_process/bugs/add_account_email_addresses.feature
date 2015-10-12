@bugs
Feature: Entering multiple email addresses when adding new accounts

  Background:
    Given I am logged into eTap

  Scenario: Multiple Email addresses separated by a space
    Given I am logged into eTap
    When I click Accounts
    And I click on Add Account on the find account screen
    And I set Name to 'James Smith' on the classic add account page
    And I set Sort Name to 'Smith, James' on the classic add account page
    And I set Address Lines to '5582 Main Street' on the classic add account page
    And I set City to 'Indianapolis' on the classic add account page
    And I set State to 'IN' on the classic add account page
    And I set Postal Code to '46280' on the classic add account page
    And I set County to 'Hamilton' on the classic add account page
    And I set Voice to '317-222-2222' on the classic add account page
    And I set Email to 'qa-1@blackbaud.com james@test.com' on the classic add account page
    And I set Web Page to 'www.google.com' on the classic add account page
    And I set Note to 'Do not call after 6pm' on the classic add account page
    And I set Short Salutation to 'James' on the classic add account page
    And I set Long Salutation to 'Mr. Smith' on the classic add account page
    And I set the UDF 'Company' to 'Rolls Royce' on the classic add account page
    And I click Save And 'Go to Personas'
    And I handle the duplicate report if necessary
    Then I should be taken to the Persona page 'James Smith''s account
    And the Address Lines should be set to '5582 Main Street'
    And the City should be set to 'Indianapolis'
    And the State should be set to 'IN'
    And the Postal Code should be set to '46280'
    And the County should be set to 'Hamilton'
    And the Voice should be set to '(317) 222-2222'
    And the Email field should be set to 'qa-1@blackbaud.com\njames@test.com'
    And the Web Page should be set to 'www.google.com'
    And the Note should be set to 'Do not call after 6pm'
    And the Short Salutation should be set to 'James'
    And the Long Salutation should be set to 'Mr. Smith'
    And the 'Company' should be set to 'Rolls Royce'

  Scenario: Multiple Email addresses separated by comma
    Given I am logged into eTap
    When I click Accounts
    And I click on Add Account on the find account screen
    And I set Name to 'Mark Cuban' on the classic add account page
    And I set Sort Name to 'Cuban, Mark' on the classic add account page
    And I set Address Lines to '4321 Fifth Street' on the classic add account page
    And I set City to 'Indianapolis' on the classic add account page
    And I set State to 'IN' on the classic add account page
    And I set Postal Code to '46280' on the classic add account page
    And I set County to 'Hamilton' on the classic add account page
    And I set Voice to '317-333-2222' on the classic add account page
    And I set Email to 'qa-1@blackbaud.com, mark@test.com mark2@test.com,mark2@test.com' on the classic add account page
    And I set Web Page to 'www.google.com' on the classic add account page
    And I set Note to 'Do not call after 6pm' on the classic add account page
    And I set Short Salutation to 'Mark' on the classic add account page
    And I set Long Salutation to 'Mr. Cuban' on the classic add account page
    And I set the UDF 'Company' to 'Dell' on the classic add account page
    And I click Save And 'Go to Personas'
    And I handle the duplicate report if necessary
    Then I should be taken to the Persona page 'Mark Cuban''s account
    And the Address Lines should be set to '4321 Fifth Street'
    And the City should be set to 'Indianapolis'
    And the State should be set to 'IN'
    And the Postal Code should be set to '46280'
    And the County should be set to 'Hamilton'
    And the Voice should be set to '(317) 333-2222'
    And the Email field should be set to 'qa-1@blackbaud.com\nmark@test.com\nmark2@test.com\nmark2@test.com'
    And the Web Page should be set to 'www.google.com'
    And the Note should be set to 'Do not call after 6pm'
    And the Short Salutation should be set to 'Mark'
    And the Long Salutation should be set to 'Mr. Cuban'
    And the 'Company' should be set to 'Dell'

  Scenario: Multiple Email addresses separated by semicolon
    Given I am logged into eTap
    When I click Accounts
    And I click on Add Account on the find account screen
    And I set Name to 'Steven Smith' on the classic add account page
    And I set Sort Name to 'Smith, Steven' on the classic add account page
    And I set Address Lines to '7655 Cherry Street' on the classic add account page
    And I set City to 'Indianapolis' on the classic add account page
    And I set State to 'IN' on the classic add account page
    And I set Postal Code to '46280' on the classic add account page
    And I set County to 'Hamilton' on the classic add account page
    And I set Voice to '317-111-2222' on the classic add account page
    And I set Email to 'steve@test.com; steven.smith@test.com;steve2@test.com' on the classic add account page
    And I set Web Page to 'www.bing.com' on the classic add account page
    And I set Note to 'Do not call after 9pm' on the classic add account page
    And I set Short Salutation to 'Steven' on the classic add account page
    And I set Long Salutation to 'Mr. Smith' on the classic add account page
    And I set the UDF 'Company' to 'Eli Lilly' on the classic add account page
    And I click Save And 'Go to Personas'
    And I handle the duplicate report if necessary
    Then I should be taken to the Persona page 'Steven Smith''s account
    And the Address Lines should be set to '7655 Cherry Street'
    And the City should be set to 'Indianapolis'
    And the State should be set to 'IN'
    And the Postal Code should be set to '46280'
    And the County should be set to 'Hamilton'
    And the Voice should be set to '(317) 111-2222'
    And the Email field should be set to 'steve@test.com\nsteven.smith@test.com\nsteve2@test.com'
    And the Web Page should be set to 'www.bing.com'
    And the Note should be set to 'Do not call after 9pm'
    And the Short Salutation should be set to 'Steven'
    And the Long Salutation should be set to 'Mr. Smith'
    And the 'Company' should be set to 'Eli Lilly'

  Scenario: Multiple Email addresses separated by a return
    Given I am logged into eTap
    When I click Accounts
    And I click on Add Account on the find account screen
    And I set Name to 'Mike Rusche' on the classic add account page
    And I set Sort Name to 'Rusche, Mike' on the classic add account page
    And I set Address Lines to '9999 Tenth Street' on the classic add account page
    And I set City to 'Indianapolis' on the classic add account page
    And I set State to 'IN' on the classic add account page
    And I set Postal Code to '46280' on the classic add account page
    And I set County to 'Hamilton' on the classic add account page
    And I set Voice to '317-999-2222' on the classic add account page
    And I set Email field to
     """
     qa-1@blackbaud.com
     mike@test.com
     """
    And I set Web Page to 'www.blackbaud.com' on the classic add account page
    And I set Note to 'Do not call after 8pm' on the classic add account page
    And I set Short Salutation to 'Mike' on the classic add account page
    And I set Long Salutation to 'Mr. Rusche' on the classic add account page
    And I set the UDF 'Company' to 'Blackbaud' on the classic add account page
    And I click Save And 'Go to Personas'
    And I handle the duplicate report if necessary
    Then I should be taken to the Persona page 'Mike Rusche''s account
    And the Address Lines should be set to '9999 Tenth Street'
    And the City should be set to 'Indianapolis'
    And the State should be set to 'IN'
    And the Postal Code should be set to '46280'
    And the County should be set to 'Hamilton'
    And the Voice should be set to '(317) 999-2222'
    And the Email field should be set to 'qa-1@blackbaud.com\nmike@test.com'
    And the Web Page should be set to 'www.blackbaud.com'
    And the Note should be set to 'Do not call after 8pm'
    And the Short Salutation should be set to 'Mike'
    And the Long Salutation should be set to 'Mr. Rusche'
    And the 'Company' should be set to 'Blackbaud'