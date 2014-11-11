Feature: Adding a gift with payment type of check

  Scenario: Add a gift from the journal page
    Given I am logged into eTap
    When I type /14 into the dynamic search field
    And I press Enter on the keyboard
    And click Journal
    And select Gift/Pledge from the Add New... drop down menu
    And set the date to 11/30/2090
    And set the Received Amount to 10.00
    And set the Fund to Unrestricted
    And set the Campaign to Annual
    And set the Approach to Unsolicited
    And set the Gift Type is set to Check
    And set the Check Date to 11/30/2090
    And set the Check Number to 879
    And set the Tribute to Cindy Grant
    And set the


    Then
