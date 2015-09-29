Feature: Processed transactions should not be editable via the mobile eTap site


  Scenario: Processed transactions should not be editable
    Given I am logged into eTap
    And I create constituent 'Test3 Constit3'
    And I add a credit card gift for 8 dollars to Test3 Constit3
    And I log out of eTap
    And I am logged into Mobile eTap
    And I type Test3 Constit3 into the mobile search field
    And I click Search on Mobile
    And I select account Test3 Constit3 on Mobile
    And I select link Journal on Mobile
    And I select the 1st journal entry
    Then Received is not editable
    And Credit/Debit Card Number is not editable
    And Expiration Date Month is not editable
    And Expiration Date Year is not editable


  Scenario: Transactions should be save-able
#    Given I am logged into eTap
#    And I create constituent 'Test Constit2'
#    And I add a credit card gift for 5 dollars to Test Constit2
    And I log out of eTap
    And I am logged into Mobile eTap
    And I type Test Constit into the mobile search field
    And I click Search on Mobile
    And I select account Test Constit on Mobile
    And I select link Journal on Mobile
    And I select the 1st journal entry
    And I select the Save button
    And I select the 1st journal entry
    Then Received should not be empty
    And Credit/Debit Card Number should not be empty