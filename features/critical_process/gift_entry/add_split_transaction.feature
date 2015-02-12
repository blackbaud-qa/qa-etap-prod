Feature: Adding a gift with payment type of check

  Scenario: Add a gift from the journal page
    Given I am logged into eTap
    When I type '/14' into the dynamic search field
    And I press Enter on the keyboard
    And click Journal
    And select Split Transaction from the Add New... drop down menu
    And set the date to '7/30/2090'
    And set the Received Amount Field to '200.00'
    And set the Number Of Segments to '2'
    And click Add Segments
#    And on segment 1 set the Received amount to '125'
#    And set the Fund to Unrestricted
#    And set the Campaign to Annual
#    And set the Approach to Personal Ask
#    And set the Gift Type to Check
#    And set the Check Date to '7/28/2090'
#    And set the Check Number to '1145'
#    And set the Tribute Information to Cindy Grant
#    And set the Soft Credit Information to Anne Hatch
#    And the Soft Credit Amount to '125.00'
#    And on segment 2 set the Received amount to '75'
#    And set the Fund to General
#    And set the Campaign to Capital
#    And set the Approach to Personal Ask
#    And set the Soft Credit Information to Anne Hatch
#    And set the Transaction UDF to Value B
#    And click Save And Edit
#    Then the split transaction should save properly