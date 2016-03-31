@bugs
Feature: Add account from tribute area

  Background:
    Given I login into eTap for bugs

  Scenario: Adding account from tribute area on gift screen
    Given I type 'Jose Berrios' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'Jose Berrios' in the search results
    And I click on 'Journal' in the account header
    And select Gift/Pledge from the Add New... drop down menu
    And set the date field to '12/30/2030'
    And set the Received Amount field to '20.00'
    And set the Fund to 'General'
    And set the Gift Type to Check
    And set the Check Date to '12/30/2030'
    And set the Check Number to '54'
    And I click the Tribute bar
    And I click on the Tribute magnifying glass
    When I click the Add Account button in the Find an Account modal
    And I set the Title to 'Mr.' in the Find an Account modal
    And I set the First Name to 'Timothy' in the Find an Account modal
    And I set the Middle Name to 'T.' in the Find an Account modal
    And I set the Last Name to 'Tribute' in the Find an Account modal
    And I click Save in the Find an Account modal
    And click Save
    And I type 'Timothy T. Tribute' into the dynamic search field
    And I press Enter on the keyboard
    Then 'Timothy T. Tribute' should show in the results
    And I type 'Jose Berrios' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'Jose Berrios' in the search results
    And I click Journal
    And I click on the Gift listed in the journal
    And I click the Tribute bar
    And I delete the tribute from the transaction
    And I click Yes to permanently delete the item
    And I click Delete on the transaction page
    And I type 'Timothy T. Tribute' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'Timothy T. Tribute' in the search results
    And I click on 'Account Settings' in the account header
    And I click Delete Role on the Account Settings page
    And I click Yes to permanently delete the item


