Feature: Add Constituent Account From The Soft Credit Section Of A Transaction

  Scenario: Add new constituent account from the soft credit section of a transaction
    Given I am logged into eTap
    When I click Giving on the main menu
    And I click the Tribute bar
    And I click on the Soft Credit magnifying glass
    And I click Add Account on the pop up find account screen
    And I set the Name Format to 'Individual' on the pop up find account screen
    And I set the Title to 'Mrs.' on the pop up find account screen
    And I set the First Name to 'Laney' on the pop up find account screen
    And I set the Middle Name to 'P.' on the pop up find account screen
    And I set the Last Name to 'Thompkins' on the pop up find account screen
  #  And I click the edit icon next to 'Short Salutation' on the pop up find account screen
    And I set the Short Salutation to 'Laney P.' on the pop up find account screen
    And I set Address Lines to '1235 East Loop' on the pop up find account screen
    And I set City to 'Fishers' on the pop up find account screen
    And I set State to 'IN' on the pop up find account screen
    And I set Postal Code to '46035' on the pop up find account screen
    And I set Email to 'qa-1@blackbaud.com' on the pop up find account screen
    And I set the UDF 'Account Type' dropdown to 'Individual' on the pop up find account screen
    And I click Save on the pop up find account screen
    And I type 'Laney' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'Laney P. Thompkins' in the search results
    And the Role should be set to 'Constituent'
    And I click on 'Personas' in the account header
    And the Short Salutation should be set to 'Laney P.'
    And the Long Salutation should be set to 'Mrs. Thompkins'
    And the Envelope Salutation should be set to 'Mrs. Laney Thompkins'
    And the Address Lines should be set to '1235 East Loop'
    And the City should be set to 'Fishers'
    And the State should be set to 'IN'
    And the Postal Code should be set to '46035'
    And the Email should be set to 'qa-1@blackbaud.com'
    And I click on 'Account Settings' in the account header
    And the Name Format value should be set to 'Individual'
    And the Title should be set to 'Mrs.'
    And the First Name should be set to 'Laney'
    And the Middle Name should be set to 'P.'
    And the Last Name should be set to 'Thompkins'
    And the Account Name should be set to 'Laney P. Thompkins'
    And the Sort Name should be set to 'Thompkins, Laney P.'
    And I click Delete Role on the Account Settings page
    And I click Yes on the Account Settings page
    Then I should see the message: 'No Results Found'