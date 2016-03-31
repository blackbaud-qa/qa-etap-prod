@bugs
Feature: Processed transactions should not be editable via the mobile eTap site


  Scenario: Processed transactions should not be editable
    Given I am logged into eTap
#    And I create constituent 'Bob Smith'  #added to zero state base DB
    And I add a credit card gift for 54 dollars to Bob Smith
    And wait for the journal page to display
    And I log out of eTap
    And I am logged into Mobile eTap
    And I type Bob Smith into the mobile search field
    And I click Search on Mobile
    And I select account Bob Smith on Mobile
    And I select link Journal on Mobile
    And I select the 1st journal entry
    Then Received is not editable
    And Credit/Debit Card Number is not editable
    And Expiration Date Month is not editable
    And Expiration Date Year is not editable
    And I log out of eTap Mobile


  Scenario: Transactions should be save-able
    Given I am logged into eTap
    And I create constituent 'Bob Smith'
    And I add a credit card gift for 5 dollars to Bob Smith
    And wait for the journal page to display
    And I log out of eTap
    And I am logged into Mobile eTap
    And I type Bob Smith into the mobile search field
    And I click Search on Mobile
    And I select account Bob Smith on Mobile
    And I select link Journal on Mobile
    And I select the 1st journal entry
    And I select the Save button
    And I select the 1st journal entry
    Then Received should not be empty
    And Credit/Debit Card Number should not be empty