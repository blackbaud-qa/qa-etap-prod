@crit_proc
Feature: Dashboard Functionality

### Test against automationbot before checkin ###
  Scenario: Adding Tiles to the Dashboard
    Given I am logged into eTap
    When I click Home on the main menu
    And I click on Go to Home on the home menu
    And I click on Select Tiles and Layout
    And I click Recently Viewed Accounts
    And I click Save
    And I should see the Recently Viewed Accounts tile
    And I click the X on the Recently Viewed Accounts tile
    And I should close the javascript popup
    Then I should not see the Recently Viewed Accounts tile in the right hand column on the Dashboard

#TODO: Still working on Drag and drop
#  Scenario: Moving Tiles on the Dashboard
#    Given I am logged into eTap
#    When I click Home on the main menu
#    And I click on Go to Home on the home menu
#    And I click on the move icon on the Support Resources tile in the right hand column on the Dashboard
#    And I drag the Support Resources tile to the left
#    Then I should see the the Support Resources tile in the left hand column on the Dashboard
  
  Scenario: Moving Tiles on the Dashboard
    Given I am logged into eTap
    When I click Home on the main menu
    And I click on Go to Home on the home menu
    And I click on Select Tiles and Layout
    And I click on 3 Equal Columns
    And I click Save
    And I should see the homepage in 3 columns
    And I click on Select Tiles and Layout
    And I click on 2 Equal Columns
    And I click Save
    And I should see the homepage in 2 columns

  Scenario: Running the Campaign Performance from the Dashboard
    Given I am logged into eTap
    When I click Home on the main menu
    And I click on Go to Home on the home menu
    And I click 'Change' on the Campaign Performance tile
    And I set the Date Range to 'Custom Range' on the Campaign Performance tile
    And I set the Start Date to '1/1/2014' and I set the End Date to '1/31/2014'
    And I click Update on the Campaign Performance tile
    And I click 'See Full Report' on the Campaign Performance tile
    And I should see 'Displaying 1 - 1 of 1' on the full Campaign Performance report
    And I click Home on the main menu
    And I click on Go to Home on the home menu
    And I click 'Change' on the Campaign Performance tile
    And I set the Date Range to 'This Year' on the Campaign Performance tile
    And I click Update on the Campaign Performance tile
    Then I should see 'Annual (This Year)' on the Campaign Performance tile



