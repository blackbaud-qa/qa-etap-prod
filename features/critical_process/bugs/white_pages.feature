Feature: Looking up a Phone Number via White Pages

  Scenario: Looking up a Phone Number when adding a new account
    Given I am logged into eTap
    When I click Accounts
    And I click on Add Account on the find account screen
    And I set Name to 'Jeremy Vanscoy' on the classic add account page
    And I set Sort Name to 'Vanscoy, Jeremy' on the classic add account page
    And I set Address Lines to '6165 Eagle Lake Dr' on the classic add account page
    And I set City to 'Zionsville' on the classic add account page
    And I set State to 'IN' on the classic add account page
    And I set Postal Code to '46077' on the classic add account page
    And I click on the WhitePages button
    And I switch to the new tab in my browser
#### The IP address for automation is currently being blocked by whitepages.com so I can't verify what is being sent over until this is resolved ###
#    Then I should see 'Jeremy Vanscoy' and 'Zionsville IN' sent over to WhitePages.com


  Scenario: Looking up a Phone Number when editing an existing account
    Given I am logged into eTap
    When I type '/9' into the dynamic search field
    And I press Enter on the keyboard
    And I click Personas
    And I click on the WhitePages button
    And I switch to the new tab in my browser
### The IP address for automation is currently being blocked by whitepages.com so I can't verify what is being sent over until this is resolved ###
#    Then I should see 'Lacey Sheldon' and 'Berkley MI' sent over to WhitePages.com
