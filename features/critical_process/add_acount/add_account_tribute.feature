Feature: Add Tribute Account From A Transaction

  Scenario: Add new tribute account
    Given I am logged into eTap
    When I click Giving on the main menu
    And I click the Tribute bar
    And I click on the Tribute magnifying glass
    And I click Add Account on the pop up find account screen
    And I set the Name Format to 'Individual' on the pop up find account screen
    And I set the Title to 'Mr.' on the pop up find account screen
    And I set the First Name to 'George' on the pop up find account screen
    And I set the Middle Name to 'T.' on the pop up find account screen
    And I set the Last Name to 'Washington' on the pop up find account screen
#    And I click the edit icon next to 'Short Salutation' on the pop up find account screen
    And I set the Short Salutation to 'Georgy Porgy' on the pop up find account screen
    And I set Address Lines to '547 Potomac Drive' on the pop up find account screen
    And I set City to 'Indianapolis' on the pop up find account screen
    And I set State to 'IN' on the pop up find account screen
    And I set Postal Code to '46354' on the pop up find account screen
    And I set Email to 'qa-1@blackbaud.com' on the pop up find account screen
    And I click Save on the pop up find account screen
    And I type 'George' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'George T. Washington' in the search results
    And the Role should be set to 'Tribute'
    And I click on 'Personas' in the account header
    And the Short Salutation should be set to 'Georgy Porgy'
    And the Long Salutation should be set to 'Mr. Washington'
    And the Envelope Salutation should be set to 'Mr. George Washington'
    And the Address Lines should be set to '547 Potomac Drive'
    And the City should be set to 'Indianapolis'
    And the State should be set to 'IN'
    And the Postal Code should be set to '46354'
    And the Email should be set to 'qa-1@blackbaud.com'
    And I click on 'Account Settings' in the account header
    And the Name Format value should be set to 'Individual'
    And the Title should be set to 'Mr.'
    And the First Name should be set to 'George'
    And the Middle Name should be set to 'T.'
    And the Last Name should be set to 'Washington'
    And the Account Name should be set to 'George T. Washington'
    And the Sort Name should be set to 'Washington, George T.'
    And I click Delete Role on the Account Settings page
    And I click Yes on the Account Settings page
    Then I should see the message: 'No Results Found'