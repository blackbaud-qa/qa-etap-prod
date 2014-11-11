Feature: Edit, Save and Run

Scenario:Preview Query
  Given I am logged into eTap
  When I click on the Base Category
  And I click on new query
  And I name the query Test
  And I accept all defaults
  And I click on Journal Entry date from commonly used fields
  And I click on the drop down next to range type
  And I choose last 30 days
  And I click on individual transaction received
  And in the  greater than or equal to field I type in 1
  When I click on save and preview query
  Then I should see displaying 1 of x number of accounts

  Scenario:Edit Query
    Given I am logged into eTap
    When I click on the Base Category
    And I click on Test
    And I click on the individual transaction received
    And in the  greater than or equal to field I type in 2
    When I click on save and preview query
    Then I should see displaying 1 of x number of accounts





