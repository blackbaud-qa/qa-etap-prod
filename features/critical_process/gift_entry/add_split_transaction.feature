Feature: Adding split transactions

  Scenario: Add a split gift
    Given I am logged into eTap
    When I type '/14' into the dynamic search field
    And I press Enter on the keyboard
    And I click Journal
    And select Split Transaction from the Add New... drop down menu
    And set the date to '7/30/2090'
    And set the Received Amount Field to '200.00'
    And set the Number Of Segments to '2'
    And click Add Segments
    And I set the Received amount on Segment 1 to '125'
    And I set the Fund on Segment 1 to 'Unrestricted'
    And I set the Campaign on Segment 1 to 'Annual'
    And I set the Approach on Segment 1 to 'Direct Mail'
    And I set the Gift Type on Segment 1 to 'Check'
    And I set the Check Date on Segment 1 to '7/28/2090'
    And I set the Check Number on Segment 1 to '1145'
    And I set the Tribute Information on Segment 1 to 'Cindy Grant'
    And I set the Soft Credit Information on Segment 1 to 'Anne Hatch'
    And I set the Soft Credit Amount on Segment 1 to '125.00'
    And I set the Received amount on Segment 2 to '75'
    And I set the Fund on Segment 2 to 'General'
    And I set the Campaign on Segment 2 to 'Capital'
    And I set the Approach on Segment 2 to 'Direct Mail'
    And I set the Soft Credit Information on Segment 2 to 'Patrica Whitten'
    And I set the Soft Credit Amount on Segment 2 to '75'
    And I set the 'Ticket Quantity A' UDF on Segment 2 to '4'
    And I click Save And 'Edit'
    And I click Expand All Segments
    And the Received amount on Segment 1 should be set to '$125.00'
    And the Fund on Segment 1 should be set to 'Unrestricted'
    And the Campaign on Segment 1 should be set to 'Annual'
    And the Approach on Segment 1 should be set to 'Direct Mail'
    And the Gift Type on Segment 1 should be set to 'Check'
    And the Check Date on Segment 1 should be set to '7/28/2090'
#    And the Check Number on Segment 1 should be set to '1145'
#    And the Tribute Information on Segment 1 should be set to 'Cindy Grant'
#    And the Soft Credit Information on Segment 1 should be set to 'Anne Hatch'
#    And the Soft Credit Amount on Segment 1 should be set to '$125.00'
#    And the Received amount on Segment 2 should be set to '$75.00'
#    And the Fund on Segment 2 should be set to 'General'
#    And the Campaign on Segment 2 should be set to 'Capital'
#    And the Approach on Segment 2 should be set to 'Direct Mail'
#    And the Soft Credit Information on Segment 2 should be set to 'Patrica Whitten'
#    And the Soft Credit Amount on Segment 2 should be set to '$75.00'
#    And the 'Ticket Quantity A' UDF on Segment 2 should be set to '4'
    And I click Delete on the split transaction page
    And I click More Options on the journal page
    And I click Uncheck All on the journal page
    And I mark the checkbox next to Split Transaction on the journal page
    And I click Find on the journal page
    Then I should see the message 'No Journal Entries Found' on the journal page
