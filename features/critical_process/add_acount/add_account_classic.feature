Feature: Add Account Classic View

  Scenario: Add new account - all fields populated
    Given I am logged into eTap
    When I click Accounts
    And I click on Add Account on the find account screen
    And I set Name to 'John Doe' on the classic add account page
    And I set Sort Name to 'Doe, John' on the classic add account page
    And I set Address Lines to '501 N Pennsylvania Parkway' on the classic add account page
    And I set City to 'Indianapolis' on the classic add account page
    And I set State to 'IN' on the classic add account page
    And I set Postal Code to '46280' on the classic add account page
    And I set County to 'Hamilton' on the classic add account page
    And I set Voice to '317-336-3827' on the classic add account page
    And I set Email to 'qa-1@blackbaud.com' on the classic add account page
    And I set Web Page to 'www.google.com' on the classic add account page
    And I set Note to 'Do not call after 6pm' on the classic add account page
    And I set Short Salutation to 'John' on the classic add account page
    And I set Long Salutation to 'Mr. Doe' on the classic add account page
#    And I set the UDF 'Company' to 'Blackbaud' on the classic add account page
    And I click Save And 'Go to Personas'
    Then I should be taken to the Persona page 'John Doe''s account
    And the Address Lines should be set to '501 N Pennsylvania Parkway'
    And the City should be set to 'Indianapolis'
    And the State should be set to 'IN'
    And the Postal Code should be set to '46280'
    And the County should be set to 'Hamilton'
    And the Voice should be set to '(317) 336-3827'
    And the Email should be set to 'qa-1@blackbaud.com'
    And the Web Page should be set to 'www.google.com'
    And the Note should be set to 'Do not call after 6pm'
    And the Short Salutation should be set to 'John'
    And the Long Salutation should be set to 'Mr. Doe'
#    And the Company should be set to 'Blackbaud'

#  Scenario: Missing Required Fields
#    When I click Accounts
#    And I click on Add Account on the find account screen
#    And I set Address Lines to '7787 West Pine Ave' on the classic add account page
#    And I set City to 'Indianapolis' on the classic add account page
#    And I set State to 'IN' on the classic add account page
#    And I set Postal Code to '46220' on the classic add account page
#    And I set Voice to '317-219-4444' on the classic add account page
#    And I set Email to 'qa-1@blackbaud.com' on the classic add account page
#    And I click Save And 'Go to Personas'
##    And I click OK on the warning message that I am missing a Name and Sort Name


  Scenario: Deleting an account
    When I click Accounts
    And I type 'Doe' into the search field
    And I click Find
    And I click on John Doe
    And I click on the Other page for John Doe
    And I click Delete Role for John Doe
    And I click Yes for John Doe
    Then I should see the message: 'No Results Found'