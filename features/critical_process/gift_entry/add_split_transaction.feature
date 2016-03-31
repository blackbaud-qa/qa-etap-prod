@crit_proc
Feature: Adding split transactions

  Background:
  Given I login into eTap for CP1

  Scenario: Add a split gift
    When I type 'Raymond Barnes' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'Raymond Barnes' in the search results
    And I click Journal
    And I delete the existing transactions in the journal
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
    And the Check Date on Segment 1 should be set to '7/28/2090'
    And the Check Number on Segment 1 should be set to '1145'
    And the Tribute Information on Segment 1 should be set to 'Cindy Grant'
    And the Soft Credit Information on Segment 1 should be set to 'Anne Hatch'
    And the Soft Credit Amount on Segment 1 should be set to '$125.00'
    And the Received amount on Segment 2 should be set to '$75.00'
    And the Fund on Segment 2 should be set to 'General'
    And the Campaign on Segment 2 should be set to 'Capital'
    And the Approach on Segment 2 should be set to 'Direct Mail'
    And the Tribute Information on Segment 2 should be set to 'No tribute selected'
    And the Soft Credit Information on Segment 2 should be set to 'Patrica Whitten'
    And the Soft Credit Amount on Segment 2 should be set to '$75.00'
    And the 'Ticket Quantity A' UDF on Segment 2 should be set to '4'
    And I click Delete on the split transaction page
    And I click the Filters icon
    And I click Clear button on the journal filter
    And I mark the checkbox next to Split Transaction on the journal page
    And I click Find on the journal page
    Then I should see the message '0 Journal Entries' on the journal page


  Scenario: Add another segment to an existing split gift and then delete it
    When I type '/17' into the dynamic search field
    And I press Enter on the keyboard
    And I click Journal
    And I click on the split transaction in the journal
    And I change the Received Amount Field to '150.00'
    And I change the Number Of Segments to '3'
    And I click Expand All Segments
###  Had to add the click expand all segments step twice because the step for pressing tab was not updating the number of segments properly  ###
    And I click Expand All Segments
    And I set the Received amount on Segment 3 to '50'
    And I set the Fund on Segment 3 to 'Unrestricted'
    And I set the Gift Type on Segment 3 to 'Check'
    And I set the Check Date on Segment 3 to '7/28/2090'
    And I set the Check Number on Segment 3 to '1145'
    And I click Save And 'Edit'
    And I click Expand All Segments
    And the Received amount on Segment 1 should be set to '$25.00'
    And the Fund on Segment 1 should be set to 'General'
    And the Campaign on Segment 1 should be set to 'Annual'
    And the Approach on Segment 1 should be set to 'Direct Mail'
    And the Check Date on Segment 1 should be set to '1/1/2010'
    And the Check Number on Segment 1 should be set to '789'
    And the Tribute Information on Segment 1 should be set to 'Cindy Grant'
    And the Soft Credit Information on Segment 1 should be set to 'Anne Hatch'
    And the Soft Credit Amount on Segment 1 should be set to '$25.00'
    And the Received amount on Segment 2 should be set to '$75.00'
    And the Fund on Segment 2 should be set to 'Unrestricted'
    And the Campaign on Segment 2 should be set to 'Capital'
    And the Approach on Segment 2 should be set to 'Direct Mail'
    And the Tribute Information on Segment 2 should be set to 'No tribute selected'
    And the Soft Credit Information on Segment 2 should be set to 'Patrica Whitten'
    And the Soft Credit Amount on Segment 2 should be set to '$75.00'
    Then the 'Ticket Quantity A' UDF on Segment 2 should be set to '3'
    Then I click Delete Segment 3
    And I should close the javascript popup
    And I change the Received Amount Field to '100.00'
    And I click Save And 'Edit'
    And I click Expand All Segments
    And the Received amount on Segment 1 should be set to '$25.00'
    And the Fund on Segment 1 should be set to 'General'
    And the Campaign on Segment 1 should be set to 'Annual'
    And the Approach on Segment 1 should be set to 'Direct Mail'
    And the Check Date on Segment 1 should be set to '1/1/2010'
    And the Check Number on Segment 1 should be set to '789'
    And the Tribute Information on Segment 1 should be set to 'Cindy Grant'
    And the Soft Credit Information on Segment 1 should be set to 'Anne Hatch'
    And the Soft Credit Amount on Segment 1 should be set to '$25.00'
    And the Received amount on Segment 2 should be set to '$75.00'
    And the Fund on Segment 2 should be set to 'Unrestricted'
    And the Campaign on Segment 2 should be set to 'Capital'
    And the Approach on Segment 2 should be set to 'Direct Mail'
    And the Tribute Information on Segment 2 should be set to 'No tribute selected'
    And the Soft Credit Information on Segment 2 should be set to 'Patrica Whitten'
    And the Soft Credit Amount on Segment 2 should be set to '$75.00'
    And the 'Ticket Quantity A' UDF on Segment 2 should be set to '3'



