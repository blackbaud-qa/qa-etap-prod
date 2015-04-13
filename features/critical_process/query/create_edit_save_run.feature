Feature: Create, Edit, Save and Run Queries

### Update and test against automationbot.us before checkin ###

  Scenario: Create and Edit a New Query
    Given I am logged into eTap
    When I click Queries on the main menu
    And I click New Category on the Query Categories page
    And I set the Name to 'Critical Process Testing' on the Create Query Category page
    And I click Save Category on the Query Categories page
    And I click 'New Query' on the Edit Query Category page
    And I set the Name to 'Donations made in March 2015' on the Create a New Query page
    And I set the data return type to 'Journal Entries' on the Create a New Query page
    And I click on 'Journal Entry Date' under Commonly Used Fields on the Create a New Query page
    And I set the Range Type to 'Custom' on the Create a New Query page
    And I set the Start Date to '3/1/2015' on the Create a New Query page
    And I set the End Date to '3/31/2015' on the Create a New Query page
    And I click on 'Individual Transaction Received' under Commonly Used Fields on the Create a New Query page
    And I set Greater Than Or Equal To '.01' on the Create a New Query page
    And I click Save And 'Preview'
    And I should see the message 'Displaying 1 - X of X' on the query preview screen
    And I click Edit on the query preview screen
    And I set the data return type to 'Accounts' on the Create a New Query page
    And I click Save And 'Preview'
    Then I should see the message 'Displaying 1 - X of X' on the query preview screen


  Scenario: Create a New Custom Account Query
    Given I am logged into eTap
    When I click Queries on the main menu
    And I click on the 'Critical Process Testing' category
    And I click 'New Custom Account Query' on the Edit Query Category page
    And I set the Name to 'Hand Selected Donors' on the Create a New Query page
    And I click Add on the Create a New Query page
    And I type '[^']*' into the search field
    And I click Find
    And I click on 'Ed Smith' in the Find Account popup window
    And I type '[^']*' into the search field
    And I click Find
    And I click on 'Ed Smith' in the Find Account popup window
    And I type '[^']*' into the search field
    And I click Find
    And I click on 'Ed Smith' in the Find Account popup window
    And I click close in the Find Account popup window
    And I click Save And 'Preview'
    Then I should see the message 'Displaying 1 - 3 of 3' on the query preview screen


  Scenario: Create a New Compound Query
    Given I am logged into eTap
    When I click Queries on the main menu
    And I click on the 'Critical Process Testing' category
    And I click 'New Compound Query' on the Edit Query Category page
    And I set the Name to 'March 2015 Donors Minus Hand Selected Donors' on the Create a New Query page
    And I set the data return type to 'Accounts' on the Create a New Query page
    And I click on 'Journal Entry Date' under Commonly Used Fields on the Create a New Query page
    And I set Combine the Queries to Subtract
    And I set the query 1 category to 'Critical Process Testing' on the Create a New Query page
    And I set the query 1 query to 'Donations made in March 2015' on the Create a New Query page
    And I set the query 2 category to 'Critical Process Testing' on the Create a New Query page
    And I set the query 2 query to 'Hand Selected Donors' on the Create a New Query page
    And I click Save And 'Preview'
    And I should see the message 'Displaying 1 - X of X' on the query preview screen
    And I click Edit on the query preview screen
    And I set Combine the Queries to Add
    And I click Save And 'Preview'
    Then I should see the message 'Displaying 1 - X of X' on the query preview screen


  Scenario: Deleting Queries and Categories
    Given I am logged into eTap
    When I click Queries on the main menu
    And I click on the 'Critical Process Testing' category
    And I click delete below the 'Donations made in March 2015' query on the Create a New Query page
    And I click Yes to permanently delete the query
    And I should see the message 'Sorry, we were unable to perform the action you requested.  This query has a dependant and can not be deleted'
    And I click OK to dismiss the notification
    And I click delete below the 'March 2015 Donors Minus Hand Selected Donors' query on the Create a New Query page
    And I click Yes to permanently delete the item
    And I click delete below the 'Donations made in March 2015' query on the Create a New Query page
    And I click Yes to permanently delete the item
    And I click delete below the 'Hand Selected Donors' query on the Create a New Query page
    And I click Yes to permanently delete the item
    And I click Queries on the main menu
    And I click delete below the 'Critical Process Testing' query category
    And I click Yes to permanently delete the item
    Then the 'Critical Process Testing' is no longer displayed






