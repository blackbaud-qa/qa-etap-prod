@bugs
Feature: Looking up a Phone Number via White Pages

### The IP address for automation is currently being blocked by whitepages.com so I can only verify what is being sent over in the url rather than verifying that the proper fields are being populated on whitepages.com ###
  Background:
    Given I login into eTap for bugs

  Scenario: Looking up a Phone Number when adding a new account
    When I click Accounts
    And I click on Add Account on the find account screen
    And I set First Name to 'Jeremy' on the classic add account page
    And I set Last Name to 'Vanscoy' on the classic add account page
    And I set Address Lines to '6165 Eagle Lake Dr' on the classic add account page
    And I set City to 'Zionsville' on the classic add account page
    And I set State to 'IN' on the classic add account page
    And I set Postal Code to '46077' on the classic add account page
    And I click on the WhitePages button
    And I switch to the new tab in my browser
    Then I should see 'http://www.whitepages.com/name/Jeremy-Vanscoy/Zionsville-IN' sent over to WhitePages.com


  Scenario: Looking up a Phone Number when editing an existing account
    When I type '/9' into the dynamic search field
    And I press Enter on the keyboard
    And I click Personas
    And I click on the WhitePages button
    And I switch to the new tab in my browser
    Then I should see 'http://www.whitepages.com/name/Lacey-Sheldon/Berkley-MI' sent over to WhitePages.com

