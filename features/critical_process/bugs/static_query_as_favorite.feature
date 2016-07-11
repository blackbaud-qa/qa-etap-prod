@bugs
Feature: Saving a static query as a favorite query

  Background:
    Given I login into eTap for bugs

  Scenario: Setting up a static query, saving it as a favorite, and then accessing it
    Given I click Queries on the main menu
    And I click on Manage Queries on the queries menu
    And I click New Category on the Query Categories page
    And I set the Name to 'Favorite Query Test' on the Create Query Category page
    And I click Save Category on the Query Categories page
    And I click 'New Query' on the Edit Query Category page
    And I set the Name to 'Constituents Last Name Smith' on the Create a New Query page
    And I mark this as a Favorite Query
    And I set the Query Type to Static
    And I set the data return type to 'Accounts' on the Create a New Query page
    And I set the Available Fields category to 'Account' on the Create a New Query page
    And I click on 'Account Name' under Available Fields on the Create a New Query page
    And I type 'Smith' into the Account Name field on the Create a New Query page
    And I click Save And 'Preview'
    And I log out of eTap
    And I login into eTap for bugs
    And I click Queries on the main menu
    And I click See all next to Favorites in the query menu
#    And I type 'Constituents Last Name Smith' into the query favorites modal search field
    And I click on the query titled 'Constituents Last Name Smith' in the query favorites modal
#    And I click the favorite query titled 'Constituents Last Name Smith'
    And I am taken to the Edit Custom Account Query Screen for 'Constituents Last Name Smith'
    And I click Save And 'View Queries'
    And I click delete below the 'Constituents Last Name Smith' query on the Create a New Query page
    And I click Yes to permanently delete the item
    And I click Queries on the main menu
    And I click on Manage Queries on the queries menu
    And I click delete below the 'Favorite Query Test' query category
    And I click Yes to permanently delete the item
    Then I should see the 'Favorite Query Test' category has been removed from the page






