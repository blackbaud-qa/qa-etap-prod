Feature: Saving a query as static and then as dynamic

  Scenario: Setting up a Journal Entry query as static, saving it, and then changing it to dynamic
    Given I am logged into eTap
    And I click Queries on the main menu
    And I click New Category on the Query Categories page
    And I set the Name to 'Dynamic Queries' on the Create Query Category page
    And I click Save Category on the Query Categories page
    And I click 'New Query' on the Edit Query Category page
    And I set the Name to 'Donations Made This Year' on the Create a New Query page
    And I set the Query Type to Static
    And I set the Starting Criteria Query Category to 'Constituent Journal Entry Date'
    And I set the Starting Criteria Query to 'This Year - JE'
    And I set the data return type to 'Journal Entries' on the Create a New Query page
    And I set the Available Fields category to 'Amounts' on the Create a New Query page
    And I click on 'Individual Transaction Received' under Available Fields on the Create a New Query page
    And I set Individual Transaction Received to 'Greater Than Or Equal To' '.01' on the Create a New Query page
    And I click Save And 'Preview'
    And I should be on the 'Dynamic Queries : Donations Made This Year' query preview screen
    And I click Edit on the query preview screen
    And I set the Query Type to Dynamic
    And I click Save And 'Preview'
    And I should be on the 'Dynamic Queries : Donations Made This Year' query preview screen
    And I click Queries on the main menu
    And I click on the 'Dynamic Queries' category
    And I click delete below the 'Donations Made This Year' query on the Create a New Query page
    And I click Yes to permanently delete the item
    And I click Queries on the main menu
    And I click delete below the 'Dynamic Queries' query category
    And I click Yes to permanently delete the item
    Then I should see the 'Dynamic Queries' category has been removed from the page

  Scenario: Setting up an Account query as static, saving it, and then changing it to dynamic
    Given I am logged into eTap
    And I click Queries on the main menu
    And I click New Category on the Query Categories page
    And I set the Name to 'Dynamic Queries' on the Create Query Category page
    And I click Save Category on the Query Categories page
    And I click 'New Query' on the Edit Query Category page
    And I set the Name to 'Constituents That Donated This Year' on the Create a New Query page
    And I set the Query Type to Static
    And I set the Starting Criteria Query Category to 'Constituent Journal Entry Date'
    And I set the Starting Criteria Query to 'This Year - JE'
    And I set the data return type to 'Accounts' on the Create a New Query page
    And I set the Available Fields category to 'Amounts' on the Create a New Query page
    And I click on 'Individual Transaction Received' under Available Fields on the Create a New Query page
    And I set Individual Transaction Received to 'Greater Than Or Equal To' '.01' on the Create a New Query page
    And I click Save And 'Preview'
    And I should be on the 'Dynamic Queries : Constituents That Donated This Year' query preview screen
    And I click Edit on the query preview screen
    And I set the Query Type to Dynamic
    And I click Save And 'Preview'
    And I should be on the 'Dynamic Queries : Constituents That Donated This Year' query preview screen
    And I click Queries on the main menu
    And I click on the 'Dynamic Queries' category
    And I click delete below the 'Constituents That Donated This Year' query on the Create a New Query page
    And I click Yes to permanently delete the item
    And I click Queries on the main menu
    And I click delete below the 'Dynamic Queries' query category
    And I click Yes to permanently delete the item
    Then I should see the 'Dynamic Queries' category has been removed from the page


