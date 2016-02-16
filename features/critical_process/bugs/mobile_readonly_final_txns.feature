Feature: TFS 534545 reported that mobile non-admin users were able to modify
  transactions that were marked as final.


  Scenario: Non-admin users should not be able to modify finalized transactions in eTap Mobile
    Given I create constituent 'Joe Smith'
    And I add a finalized credit card gift for 40 dollars to Joe Smith
    And wait for the journal page to display
    And I create user 'testUser1'
    And I log out of eTap
    And I am logged into eTap
    And I click Management on the main menu
    And I click on Security Groups on the management menu
    And set 'testUser1' rights to non admin
    And I log out of eTap
    And login testUser1, Password! logs into Mobile eTap
    And I type Joe Smith into the mobile search field
    And I click Search on Mobile
    And I select account Joe Smith on Mobile
    And I select link Journal on Mobile
    And I select the 1st journal entry
    Then the Save button is not present
    And the Delete button is not present